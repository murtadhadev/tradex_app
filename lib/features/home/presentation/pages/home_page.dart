import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../injection/injection.dart';
import '../../../../core/widgets/custom_button.dart';
import '../../../../core/widgets/custom_app_bar.dart';
import '../../../../l10n/app_localizations.dart';
import '../../../search/presentation/bloc/search_bloc.dart';
import '../../../search/presentation/bloc/search_event.dart';
import '../bloc/home_bloc.dart';
import '../widgets/home_banner_slider.dart';
import '../widgets/home_categories_section.dart';
import '../widgets/home_brands_section.dart';
import '../widgets/home_products_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<HomeBloc>()..add(const HomeEvent.loadHomeData()),
      child: Scaffold(
        appBar: CustomAppBarFactory.home(),
        body: BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            if (state.isLoading) {
              return const Center(child: CircularProgressIndicator());
            }

            if (state.errorMessage != null) {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Text(
                    //   '${AppLocalizations.of(context)!.}',
                    //   style: AppTextStyles.descriptionMedium.copyWith(
                    //     color: AppColors.error,
                    //   ),
                    //   textAlign: TextAlign.center,
                    // ),
                    const SizedBox(height: 16),
                    CustomButton(
                      width: 200,
                      text: AppLocalizations.of(context)!.retry,
                      onPressed: () {
                        context.read<HomeBloc>().add(
                          const HomeEvent.loadHomeData(),
                        );
                      },
                      style: CustomButtonStyle.primary,
                    ),
                  ],
                ),
              );
            }

            WidgetsBinding.instance.addPostFrameCallback((_) {
              final allProducts = [
                ...state.mostPopularProducts,
                ...state.bestSellingProducts,
              ];
              context.read<SearchBloc>().add(
                SearchEvent.setAllProducts(products: allProducts),
              );
            });

            return SingleChildScrollView(
              child: Column(
                children: [
                  if (state.banners.isNotEmpty)
                    HomeBannerSlider(banners: state.banners),
                  if (state.categories.isNotEmpty)
                    HomeCategoriesSection(
                      categories: state.categories,
                      products: [
                        ...state.mostPopularProducts,
                        ...state.bestSellingProducts,
                      ],
                      clients: state.bestClients,
                    ),
                  if (state.brands.isNotEmpty)
                    HomeBrandsSection(
                      brands: state.brands,
                      products: [
                        ...state.mostPopularProducts,
                        ...state.bestSellingProducts,
                      ],
                      clients: state.bestClients,
                    ),
                  if (state.mostPopularProducts.isNotEmpty)
                    HomeProductsSection(
                      title: AppLocalizations.of(context)!.mostPopular,
                      products: state.mostPopularProducts,
                      clients: state.bestClients,
                    ),
                  if (state.bestSellingProducts.isNotEmpty)
                    HomeProductsSection(
                      title: AppLocalizations.of(context)!.bestSelling,
                      products: state.bestSellingProducts,
                      clients: state.bestClients,
                    ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
