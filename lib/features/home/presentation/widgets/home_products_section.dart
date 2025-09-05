import 'package:flutter/material.dart';
import '../../../../l10n/app_localizations.dart';
import '../../domain/entities/product_entity.dart';
import '../../domain/entities/client_entity.dart';
import 'product_card.dart';
import '../../../../core/navigation/app_router.dart';
import '../../../../core/theme/app_text_styles.dart';

class HomeProductsSection extends StatelessWidget {
  final String title;
  final List<ProductEntity> products;
  final List<ClientEntity> clients;

  const HomeProductsSection({
    super.key,
    required this.title,
    required this.products,
    required this.clients,
  });

  @override
  Widget build(BuildContext context) {
    if (products.isEmpty) return const SizedBox.shrink();

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(title, style: AppTextStyles.titleMedium),
              TextButton(
                onPressed: () {
                  NavigationService.navigateToAllProducts(
                    title,
                    products,
                    clients,
                  );
                },
                child: Text(AppLocalizations.of(context)!.seeAll),
              ),
            ],
          ),
          const SizedBox(height: 16),
          SizedBox(
            height: 300,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: products.length,
              itemBuilder: (context, index) {
                return Container(
                  width: 180,
                  margin: const EdgeInsets.only(right: 12),
                  child: ProductCard(product: products[index]),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
