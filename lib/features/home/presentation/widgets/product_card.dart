import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:shimmer/shimmer.dart';
import '../../domain/entities/product_entity.dart';
import '../../../../core/navigation/app_router.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_text_styles.dart';
import '../../../../l10n/app_localizations.dart';

class ProductCard extends StatelessWidget {
  final ProductEntity product;

  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        NavigationService.navigateToProductDetail(product);
      },
      child: Card(
        color: AppColors.cardBackground,
        elevation: 2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        shadowColor: AppColors.mediumGray.withOpacity(0.2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 3,
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(12),
                    ),
                    child: product.productMedias.isNotEmpty
                        ? Hero(
                            tag: 'product_image_${product.id}',
                            child: CachedNetworkImage(
                              imageUrl: product.productMedias.first.path,
                              width: double.infinity,
                              fit: BoxFit.cover,
                              placeholder: (context, url) => Shimmer.fromColors(
                                baseColor: AppColors.lightGray,
                                highlightColor: AppColors.secondary,
                                child: Container(color: AppColors.secondary),
                              ),
                              errorWidget: (context, url, error) => Container(
                                color: AppColors.lightGray,
                                child: Icon(
                                  Icons.image_not_supported,
                                  color: AppColors.mediumGray,
                                ),
                              ),
                            ),
                          )
                        : Container(
                            color: AppColors.lightGray,
                            child: Icon(
                              Icons.image_not_supported,
                              color: AppColors.mediumGray,
                            ),
                          ),
                  ),

                  Positioned(
                    top: 8,
                    left: 8,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        color: AppColors.background,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        children: [
                          Text(
                            '${AppLocalizations.of(context)!.minQuantity}: ',
                            style: AppTextStyles.badgeText.copyWith(
                              fontSize: 11,
                              color: AppColors.titleText,
                            ),
                          ),
                          Text(
                            '${product.minQuantity}',
                            style: AppTextStyles.badgeText.copyWith(
                              fontSize: 11,
                              color: AppColors.accent,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  Positioned(
                    bottom: 8,
                    right: 8,
                    child: Container(
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: AppColors.secondary.withOpacity(0.8),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        product.isFavourite
                            ? Icons.favorite
                            : Icons.favorite_border,
                        color: product.isFavourite
                            ? AppColors.error
                            : AppColors.mediumGray,
                        size: 16,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      product.name,
                      style: AppTextStyles.subtitleMedium.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),

                    const SizedBox(height: 4),

                    Text(
                      'AED ${product.price.toStringAsFixed(2)}',
                      style: AppTextStyles.priceText.copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 4),

                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            product.clientName ??
                                AppLocalizations.of(context)!.supplierInfo,
                            style: AppTextStyles.descriptionSmall.copyWith(
                              fontSize: 11,
                              color: AppColors.mediumGray,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        if (product.clientIsVerified)
                          Icon(
                            Icons.verified,
                            size: 12,
                            color: AppColors.accent,
                          ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
