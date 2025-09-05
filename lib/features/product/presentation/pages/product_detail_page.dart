import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:shimmer/shimmer.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../cart/presentation/bloc/cart_event.dart';
import '../../../home/domain/entities/product_entity.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_text_styles.dart';
import '../../../../core/widgets/custom_button.dart';
import '../../../../core/widgets/custom_app_bar.dart';
import '../../../cart/presentation/bloc/cart_bloc.dart';
import '../../../../l10n/app_localizations.dart';
import '../../../../core/navigation/app_router.dart';

class ProductDetailPage extends StatefulWidget {
  final ProductEntity product;

  const ProductDetailPage({super.key, required this.product});

  @override
  State<ProductDetailPage> createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  late PageController _pageController;
  int _currentImageIndex = 0;
  int _quantity = 1;

  double get _totalPrice => widget.product.price * _quantity;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
    _quantity = widget.product.minQuantity;
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _addToCart() {
    context.read<CartBloc>().add(
      CartEvent.addToCart(product: widget.product, quantity: _quantity),
    );

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          '${AppLocalizations.of(context)!.addedToCart} ${_quantity} ${widget.product.name}',
          style: AppTextStyles.descriptionMedium.copyWith(
            color: AppColors.whiteText,
          ),
        ),
        backgroundColor: AppColors.success,
        duration: const Duration(seconds: 2),
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
    );

    Future.delayed(const Duration(milliseconds: 500), () {
      if (mounted) {
        NavigationService.navigateBack();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarFactory.withTitleAndActions(widget.product.name, [
        IconButton(
          onPressed: () {},
          icon: Icon(
            widget.product.isFavourite ? Icons.favorite : Icons.favorite_border,
            color: widget.product.isFavourite
                ? AppColors.error
                : AppColors.mediumGray,
          ),
        ),
      ]),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 350,
              color: AppColors.lightGray,
              child: Stack(
                children: [
                  widget.product.productMedias.isNotEmpty
                      ? PageView.builder(
                          controller: _pageController,
                          onPageChanged: (index) {
                            setState(() {
                              _currentImageIndex = index;
                            });
                          },
                          itemCount: widget.product.productMedias.length,
                          itemBuilder: (context, index) {
                            return Hero(
                              tag: 'product_image_${widget.product.id}',
                              child: CachedNetworkImage(
                                imageUrl:
                                    widget.product.productMedias[index].path,
                                fit: BoxFit.contain,
                                placeholder: (context, url) =>
                                    Shimmer.fromColors(
                                      baseColor: AppColors.lightGray,
                                      highlightColor: AppColors.secondary,
                                      child: Container(
                                        color: AppColors.secondary,
                                      ),
                                    ),
                                errorWidget: (context, url, error) => Container(
                                  color: AppColors.lightGray,
                                  child: Icon(
                                    Icons.image_not_supported,
                                    color: AppColors.mediumGray,
                                    size: 50,
                                  ),
                                ),
                              ),
                            );
                          },
                        )
                      : Container(
                          color: AppColors.lightGray,
                          child: Center(
                            child: Icon(
                              Icons.image_not_supported,
                              color: AppColors.mediumGray,
                              size: 50,
                            ),
                          ),
                        ),

                  if (widget.product.productMedias.length > 1)
                    Positioned(
                      bottom: 16,
                      left: 0,
                      right: 0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                          widget.product.productMedias.length,
                          (index) => Container(
                            width: 8,
                            height: 8,
                            margin: const EdgeInsets.symmetric(horizontal: 4),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: _currentImageIndex == index
                                  ? AppColors.primary
                                  : AppColors.mediumGray.withOpacity(0.5),
                            ),
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.product.name,
                    style: AppTextStyles.titleLarge.copyWith(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 8),
                  if (widget.product.brand != null)
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 8,
                      ),
                      decoration: BoxDecoration(
                        color: AppColors.surface,
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: AppColors.lightGray),
                      ),
                      child: Row(
                        children: [
                          if (widget.product.brand!.logo != null)
                            Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                color: AppColors.secondary,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: CachedNetworkImage(
                                  imageUrl: widget.product.brand!.logo!,
                                  fit: BoxFit.contain,
                                  placeholder: (context, url) =>
                                      Container(color: AppColors.lightGray),
                                  errorWidget: (context, url, error) => Icon(
                                    Icons.business,
                                    color: AppColors.mediumGray,
                                    size: 24,
                                  ),
                                ),
                              ),
                            )
                          else
                            Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                color: AppColors.lightGray,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Icon(
                                Icons.business,
                                color: AppColors.mediumGray,
                                size: 24,
                              ),
                            ),
                          const SizedBox(width: 12),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  AppLocalizations.of(context)!.brands,
                                  style: AppTextStyles.descriptionSmall
                                      .copyWith(color: AppColors.mediumGray),
                                ),
                                Text(
                                  widget.product.brand!.name,
                                  style: AppTextStyles.subtitleMedium.copyWith(
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                  const SizedBox(height: 16),

                  // Price and Min Order
                  Row(
                    children: [
                      // Price
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'AED ${_totalPrice.toStringAsFixed(2)}',
                            style: AppTextStyles.priceText.copyWith(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          if (_quantity > 1)
                            Text(
                              'AED ${widget.product.price.toStringAsFixed(2)} ${AppLocalizations.of(context)!.perUnit}',
                              style: AppTextStyles.descriptionSmall.copyWith(
                                color: AppColors.mediumGray,
                              ),
                            ),
                        ],
                      ),

                      const SizedBox(width: 16),

                      // Min Order Badge
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 6,
                        ),
                        decoration: BoxDecoration(
                          color: AppColors.accent,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              Icons.inventory_2,
                              color: AppColors.whiteText,
                              size: 16,
                            ),
                            const SizedBox(width: 4),
                            Text(
                              '${widget.product.minQuantity}',
                              style: AppTextStyles.badgeText.copyWith(
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 12),

                  Row(
                    children: [
                      Icon(
                        widget.product.isAvailable
                            ? Icons.check_circle
                            : Icons.cancel,
                        color: widget.product.isAvailable
                            ? AppColors.success
                            : AppColors.error,
                        size: 16,
                      ),
                      const SizedBox(width: 8),
                      Text(
                        widget.product.isAvailable
                            ? AppLocalizations.of(context)!.inStock
                            : AppLocalizations.of(context)!.outOfStock,
                        style: AppTextStyles.descriptionMedium.copyWith(
                          color: widget.product.isAvailable
                              ? AppColors.success
                              : AppColors.error,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 20),

                  Row(
                    children: [
                      Text(
                        AppLocalizations.of(context)!.quantity,
                        style: AppTextStyles.subtitleMedium.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const Spacer(),
                      // Quantity Input
                      Container(
                        width: 120,
                        height: 40,
                        decoration: BoxDecoration(
                          border: Border.all(color: AppColors.lightGray),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: GestureDetector(
                                onTap: () {
                                  if (_quantity > widget.product.minQuantity) {
                                    setState(() {
                                      _quantity--;
                                    });
                                  }
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: AppColors.lightGray,
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(8),
                                      bottomLeft: Radius.circular(8),
                                    ),
                                  ),
                                  child: const Icon(
                                    Icons.remove,
                                    color: AppColors.primary,
                                    size: 20,
                                  ),
                                ),
                              ),
                            ),

                            Expanded(
                              flex: 2,
                              child: Center(
                                child: Text(
                                  '$_quantity',
                                  style: AppTextStyles.subtitleMedium.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),

                            Expanded(
                              child: GestureDetector(
                                onTap: () {
                                  if (widget.product.maxQuantity == 0 ||
                                      _quantity < widget.product.maxQuantity) {
                                    setState(() {
                                      _quantity++;
                                    });
                                  }
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: AppColors.lightGray,
                                    borderRadius: const BorderRadius.only(
                                      topRight: Radius.circular(8),
                                      bottomRight: Radius.circular(8),
                                    ),
                                  ),
                                  child: const Icon(
                                    Icons.add,
                                    color: AppColors.primary,
                                    size: 20,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 20),
                  if (widget.product.clientName != null)
                    Container(
                      margin: const EdgeInsets.only(bottom: 16),
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: AppColors.secondary,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: AppColors.lightGray),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.business,
                                color: AppColors.accent,
                                size: 20,
                              ),
                              const SizedBox(width: 8),
                              Text(
                                AppLocalizations.of(context)!.supplierInfo,
                                style: AppTextStyles.subtitleMedium.copyWith(
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const Spacer(),
                              if (widget.product.clientIsVerified)
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 8,
                                    vertical: 4,
                                  ),
                                  decoration: BoxDecoration(
                                    color: AppColors.success,
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Icon(
                                        Icons.verified,
                                        color: AppColors.whiteText,
                                        size: 14,
                                      ),
                                      const SizedBox(width: 4),
                                      Text(
                                        AppLocalizations.of(context)!.verified,
                                        style: AppTextStyles.badgeText.copyWith(
                                          fontSize: 11,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                            ],
                          ),
                          const SizedBox(height: 12),
                          Text(
                            widget.product.clientName!,
                            style: AppTextStyles.subtitleLarge.copyWith(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(height: 8),
                          GestureDetector(
                            onTap: () {
                              _showContactSheet(context);
                            },
                            child: Row(
                              children: [
                                Icon(
                                  Icons.phone,
                                  color: AppColors.accent,
                                  size: 16,
                                ),
                                const SizedBox(width: 8),
                                Text(
                                  AppLocalizations.of(context)!.contactSupplier,
                                  style: AppTextStyles.descriptionMedium
                                      .copyWith(
                                        color: AppColors.accent,
                                        decoration: TextDecoration.underline,
                                      ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                  const SizedBox(height: 20),
                  Container(
                    margin: const EdgeInsets.only(bottom: 16),
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: AppColors.secondary,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: AppColors.lightGray),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          AppLocalizations.of(context)!.productDetails,
                          style: AppTextStyles.subtitleMedium.copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Row(
                          children: [
                            Expanded(
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.inventory_2,
                                    color: AppColors.mediumGray,
                                    size: 14,
                                  ),
                                  const SizedBox(width: 6),
                                  Text(
                                    '${AppLocalizations.of(context)!.minQuantity}: ${widget.product.minQuantity}',
                                    style: AppTextStyles.descriptionSmall,
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.inventory,
                                    color: AppColors.mediumGray,
                                    size: 14,
                                  ),
                                  const SizedBox(width: 6),
                                  Text(
                                    '${AppLocalizations.of(context)!.maxQuantity}: ${widget.product.maxQuantity}',
                                    style: AppTextStyles.descriptionSmall,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),

                        if (widget.product.haveDiscount) ...[
                          const SizedBox(height: 6),
                          Row(
                            children: [
                              Icon(
                                Icons.local_offer,
                                color: AppColors.accent,
                                size: 14,
                              ),
                              const SizedBox(width: 6),
                              Text(
                                AppLocalizations.of(
                                  context,
                                )!.specialOfferAvailable,
                                style: AppTextStyles.descriptionSmall.copyWith(
                                  color: AppColors.accent,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ],
                    ),
                  ),

                  const SizedBox(height: 16),
                  const SizedBox(height: 16),
                  Container(
                    margin: const EdgeInsets.only(bottom: 16),
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: AppColors.secondary,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: AppColors.lightGray),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          AppLocalizations.of(context)!.reviews,
                          style: AppTextStyles.subtitleMedium.copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(height: 12),
                        Row(
                          children: [
                            Text(
                              widget.product.rating.toStringAsFixed(1),
                              style: AppTextStyles.titleLarge.copyWith(
                                fontSize: 32,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(width: 8),
                            Icon(Icons.star, color: AppColors.accent, size: 24),
                          ],
                        ),
                        const SizedBox(height: 4),
                        Text(
                          '${widget.product.ratingCount} ${AppLocalizations.of(context)!.reviews}',
                          style: AppTextStyles.descriptionMedium.copyWith(
                            color: AppColors.mediumGray,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 24),

                  const SizedBox(height: 32),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 1,
              blurRadius: 4,
              offset: const Offset(0, -2),
            ),
          ],
        ),
        child: Row(
          children: [
            Expanded(
              child: CustomButton(
                text: AppLocalizations.of(context)!.addToCart,
                onPressed: widget.product.isAvailable ? _addToCart : null,
                style: CustomButtonStyle.primary,
                borderRadius: 16,
                padding: const EdgeInsets.symmetric(vertical: 8),
              ),
            ),
            const SizedBox(width: 12),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: AppColors.accent),
                borderRadius: BorderRadius.circular(16),
              ),
              child: IconButton(
                onPressed: () {
                  _showContactSheet(context);
                },
                icon: const Icon(Icons.chat),
                color: AppColors.accent,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showContactSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => Container(
        decoration: const BoxDecoration(
          color: AppColors.secondary,
          borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
        ),
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Handle bar
            Center(
              child: Container(
                width: 40,
                height: 4,
                decoration: BoxDecoration(
                  color: AppColors.lightGray,
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
            ),
            const SizedBox(height: 20),

            Text(
              AppLocalizations.of(context)!.contactSupplier,
              style: AppTextStyles.titleMedium.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 8),

            if (widget.product.clientName != null) ...[
              Text(
                widget.product.clientName!,
                style: AppTextStyles.subtitleMedium.copyWith(
                  color: AppColors.mediumGray,
                ),
              ),
              const SizedBox(height: 20),
            ],

            _buildContactOption(
              icon: Icons.phone,
              title: AppLocalizations.of(context)!.call,
              subtitle: AppLocalizations.of(context)!.makePhoneCall,
              color: AppColors.success,
              onTap: () {
                Navigator.pop(context);
              },
            ),
            const SizedBox(height: 12),

            _buildContactOption(
              icon: Icons.message,
              title: AppLocalizations.of(context)!.whatsapp,
              subtitle: AppLocalizations.of(context)!.sendWhatsAppMessage,
              color: const Color(0xFF25D366),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            const SizedBox(height: 12),

            _buildContactOption(
              icon: Icons.email,
              title: AppLocalizations.of(context)!.email,
              subtitle: AppLocalizations.of(context)!.sendEmail,
              color: AppColors.accent,
              onTap: () {
                Navigator.pop(context);
              },
            ),

            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _buildContactOption({
    required IconData icon,
    required String title,
    required String subtitle,
    required Color color,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(8),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.lightGray),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: color.withOpacity(0.1),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Icon(icon, color: color, size: 20),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: AppTextStyles.subtitleMedium.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    subtitle,
                    style: AppTextStyles.descriptionMedium.copyWith(
                      color: AppColors.mediumGray,
                    ),
                  ),
                ],
              ),
            ),
            Icon(
              Icons.arrow_forward_ios,
              size: 16,
              color: AppColors.mediumGray,
            ),
          ],
        ),
      ),
    );
  }
}
