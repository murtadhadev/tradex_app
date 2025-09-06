import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:shimmer/shimmer.dart';
import '../../../../l10n/app_localizations.dart';
import '../../domain/entities/category_entity.dart';
import '../../domain/entities/product_entity.dart';
import '../../domain/entities/client_entity.dart';
import '../../../../core/navigation/app_router.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_text_styles.dart';

class HomeCategoriesSection extends StatelessWidget {
  final List<CategoryEntity> categories;
  final List<ProductEntity> products;
  final List<ClientEntity> clients;

  const HomeCategoriesSection({
    super.key,
    required this.categories,
    this.products = const [],
    this.clients = const [],
  });

  @override
  Widget build(BuildContext context) {
    if (categories.isEmpty) return const SizedBox.shrink();

    final firstRowCategories = categories
        .take((categories.length / 2).ceil())
        .toList();
    final secondRowCategories = categories
        .skip((categories.length / 2).ceil())
        .toList();

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppLocalizations.of(context)!.categories,
            style: AppTextStyles.titleMedium,
          ),
          const SizedBox(height: 16),

          SizedBox(
            height: 120,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: firstRowCategories.length,
              itemBuilder: (context, index) {
                final category = firstRowCategories[index];
                return _buildCategoryCard(category);
              },
            ),
          ),

          const SizedBox(height: 12),

          SizedBox(
            height: 120,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: secondRowCategories.length,
              itemBuilder: (context, index) {
                final category = secondRowCategories[index];
                return _buildCategoryCard(category);
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCategoryCard(CategoryEntity category) {
    return GestureDetector(
      onTap: () {
        NavigationService.navigateToCategory(
          category,
          products: [],
          clients: clients,
        );
      },
      child: Container(
        width: 140,
        margin: const EdgeInsets.only(right: 16),
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColors.lightGray,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: category.image != null
                    ? ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: CachedNetworkImage(
                          imageUrl: category.image!,
                          fit: BoxFit.cover,
                          placeholder: (context, url) => Shimmer.fromColors(
                            baseColor: AppColors.lightGray,
                            highlightColor: AppColors.secondary,
                            child: Container(color: AppColors.secondary),
                          ),
                          errorWidget: (context, url, error) => Center(
                            child: Icon(
                              Icons.category,
                              color: AppColors.mediumGray,
                              size: 40,
                            ),
                          ),
                        ),
                      )
                    : Center(
                        child: Icon(
                          Icons.category,
                          color: AppColors.mediumGray,
                          size: 40,
                        ),
                      ),
              ),
            ),

            const SizedBox(height: 8),

            Expanded(
              flex: 1,
              child: Center(
                child: Text(
                  category.name,
                  style: AppTextStyles.subtitleSmall.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
