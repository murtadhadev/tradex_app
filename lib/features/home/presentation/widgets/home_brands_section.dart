import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:shimmer/shimmer.dart';
import '../../../../l10n/app_localizations.dart';
import '../../domain/entities/brand_entity.dart';
import '../../domain/entities/product_entity.dart';
import '../../domain/entities/client_entity.dart';
import '../../../../core/navigation/app_router.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_text_styles.dart';

class HomeBrandsSection extends StatelessWidget {
  final List<BrandEntity> brands;
  final List<ProductEntity> products;
  final List<ClientEntity> clients;

  const HomeBrandsSection({
    super.key,
    required this.brands,
    this.products = const [],
    this.clients = const [],
  });

  @override
  Widget build(BuildContext context) {
    if (brands.isEmpty) return const SizedBox.shrink();

    final firstRowBrands = brands.take((brands.length / 2).ceil()).toList();
    final secondRowBrands = brands.skip((brands.length / 2).ceil()).toList();

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppLocalizations.of(context)!.brands,
            style: AppTextStyles.titleMedium,
          ),
          const SizedBox(height: 16),

          SizedBox(
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: firstRowBrands.length,
              itemBuilder: (context, index) {
                final brand = firstRowBrands[index];
                return _buildBrandCard(brand);
              },
            ),
          ),

          const SizedBox(height: 12),

          SizedBox(
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: secondRowBrands.length,
              itemBuilder: (context, index) {
                final brand = secondRowBrands[index];
                return _buildBrandCard(brand);
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBrandCard(BrandEntity brand) {
    return GestureDetector(
      onTap: () {
        final brandProducts = products
            .where((product) => product.brand?.id == brand.id)
            .toList();

        NavigationService.navigateToBrand(
          brand,
          products: brandProducts,
          clients: clients,
        );
      },
      child: Container(
        width: 100,
        height: 100,
        margin: const EdgeInsets.only(right: 12),
        decoration: BoxDecoration(
          color: AppColors.cardBackground,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: AppColors.mediumGray.withOpacity(0.1),
              blurRadius: 4,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(8),
                child: brand.logo != null
                    ? CachedNetworkImage(
                        imageUrl: brand.logo!,
                        fit: BoxFit.contain,
                        placeholder: (context, url) => Shimmer.fromColors(
                          baseColor: AppColors.lightGray,
                          highlightColor: AppColors.secondary,
                          child: Container(color: AppColors.secondary),
                        ),
                        errorWidget: (context, url, error) => Center(
                          child: Icon(
                            Icons.business,
                            color: AppColors.mediumGray,
                            size: 24,
                          ),
                        ),
                      )
                    : Center(
                        child: Icon(
                          Icons.business,
                          color: AppColors.mediumGray,
                          size: 24,
                        ),
                      ),
              ),
            ),

            Expanded(
              flex: 1,
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                child: Center(
                  child: Text(
                    brand.name,
                    style: AppTextStyles.subtitleSmall.copyWith(
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.center,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
