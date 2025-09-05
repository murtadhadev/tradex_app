import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_text_styles.dart';
import '../../../../core/widgets/custom_button.dart';
import '../../../../core/widgets/custom_app_bar.dart';
import '../../../../l10n/app_localizations.dart';
import '../../../cart/presentation/bloc/cart_bloc.dart';
import '../../../cart/presentation/bloc/cart_event.dart';
import '../../../cart/presentation/bloc/cart_state.dart';
import '../../../orders/presentation/bloc/orders_bloc.dart';
import '../../../orders/presentation/bloc/orders_event.dart';
import '../widgets/checkout_summary_card.dart';
import '../widgets/checkout_payment_methods.dart';
import '../widgets/checkout_delivery_info.dart';
import '../widgets/checkout_success_dialog.dart';

class CheckoutPage extends StatefulWidget {
  const CheckoutPage({super.key});

  @override
  State<CheckoutPage> createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _phoneController = TextEditingController();
  final _addressController = TextEditingController();
  final _notesController = TextEditingController();

  String _selectedPaymentMethod = 'cash';
  bool _isProcessing = false;

  @override
  void dispose() {
    _nameController.dispose();
    _phoneController.dispose();
    _addressController.dispose();
    _notesController.dispose();
    super.dispose();
  }

  void _processOrder() async {
    if (!_formKey.currentState!.validate()) return;

    setState(() {
      _isProcessing = true;
    });

    // Save order to OrdersBloc
    final cartState = context.read<CartBloc>().state;
    final ordersBloc = context.read<OrdersBloc>();

    ordersBloc.add(
      OrdersEvent.addOrder(
        customerName: _nameController.text,
        customerPhone: _phoneController.text,
        deliveryAddress: _addressController.text,
        notes: _notesController.text.isNotEmpty ? _notesController.text : null,
        paymentMethod: _selectedPaymentMethod,
        cartItems: cartState.cartItems,
        totalAmount: cartState.totalPrice,
      ),
    );

    // Simulate order processing
    await Future.delayed(const Duration(seconds: 3));

    setState(() {
      _isProcessing = false;
    });

    // Show success dialog
    if (mounted) {
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => CheckoutSuccessDialog(
          onComplete: () {
            // Clear cart and navigate to orders
            context.read<CartBloc>().add(const CartEvent.clearCart());
            Navigator.of(
              context,
            ).pushNamedAndRemoveUntil('/orders', (route) => false);
          },
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarFactory.withTitle(
        AppLocalizations.of(context)!.checkoutTitle,
      ),
      body: BlocBuilder<CartBloc, CartState>(
        builder: (context, cartState) {
          if (cartState.cartItems.isEmpty) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.shopping_cart_outlined,
                    size: 80,
                    color: AppColors.mediumGray,
                  ),
                  const SizedBox(height: 16),
                  Text(
                    AppLocalizations.of(context)!.cartEmpty,
                    style: AppTextStyles.titleMedium,
                  ),
                ],
              ),
            );
          }

          return Form(
            key: _formKey,
            child: Column(
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Order Summary
                        CheckoutSummaryCard(cartState: cartState),
                        const SizedBox(height: 20),

                        // Delivery Information
                        CheckoutDeliveryInfo(
                          nameController: _nameController,
                          phoneController: _phoneController,
                          addressController: _addressController,
                          notesController: _notesController,
                        ),
                        const SizedBox(height: 20),

                        // Payment Methods
                        CheckoutPaymentMethods(
                          selectedMethod: _selectedPaymentMethod,
                          onMethodSelected: (method) {
                            setState(() {
                              _selectedPaymentMethod = method;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                ),

                // Bottom Checkout Button
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: AppColors.secondary,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.1),
                        spreadRadius: 1,
                        blurRadius: 4,
                        offset: const Offset(0, -2),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '${AppLocalizations.of(context)!.total} (${cartState.itemCount} ${AppLocalizations.of(context)!.items})',
                            style: AppTextStyles.subtitleMedium,
                          ),
                          Text(
                            'AED ${cartState.totalPrice.toStringAsFixed(2)}',
                            style: AppTextStyles.priceText.copyWith(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      CustomButton(
                        text: AppLocalizations.of(context)!.placeOrder,
                        onPressed: _processOrder,
                        isLoading: _isProcessing,
                        width: double.infinity,
                        style: CustomButtonStyle.primary,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
