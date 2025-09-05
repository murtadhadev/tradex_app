import 'package:flutter/material.dart';
import '../../features/main/presentation/pages/main_page.dart';
import '../../features/category/presentation/pages/category_page.dart';
import '../../features/brand/presentation/pages/brand_page.dart';
import '../../features/product/presentation/pages/product_detail_page.dart';
import '../../features/product/presentation/pages/all_products_page.dart';
import '../../features/product/presentation/pages/orders_page.dart';
import '../../features/checkout/presentation/pages/checkout_page.dart';
import '../../features/home/domain/entities/category_entity.dart';
import '../../features/home/domain/entities/brand_entity.dart';
import '../../features/home/domain/entities/product_entity.dart';

class AppRouter {
  static const String home = '/';
  static const String category = '/category';
  static const String brand = '/brand';
  static const String productDetail = '/product-detail';
  static const String allProducts = '/all-products';
  static const String checkout = '/checkout';
  static const String orders = '/orders';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return MaterialPageRoute(builder: (_) => const MainPage());

      case category:
        final args = settings.arguments as Map<String, dynamic>;
        return MaterialPageRoute(
          builder: (_) => CategoryPage(
            category: args['category'] as CategoryEntity,
            products: args['products'] as List<ProductEntity>? ?? [],
          ),
        );

      case brand:
        final args = settings.arguments as Map<String, dynamic>;
        return MaterialPageRoute(
          builder: (_) => BrandPage(
            brand: args['brand'] as BrandEntity,
            products: args['products'] as List<ProductEntity>? ?? [],
          ),
        );

      case productDetail:
        final product = settings.arguments as ProductEntity;
        return MaterialPageRoute(
          builder: (_) => ProductDetailPage(product: product),
        );

      case allProducts:
        final args = settings.arguments as Map<String, dynamic>;
        return MaterialPageRoute(
          builder: (_) => AllProductsPage(
            title: args['title'] as String,
            products: args['products'] as List<ProductEntity>,
          ),
        );

      case checkout:
        return MaterialPageRoute(builder: (_) => const CheckoutPage());

      case orders:
        return MaterialPageRoute(builder: (_) => const OrdersPage());

      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            appBar: AppBar(title: const Text('Page Not Found')),
            body: const Center(child: Text('Page not found!')),
          ),
        );
    }
  }
}

class NavigationService {
  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();

  static void navigateToCategory(
    CategoryEntity category, {
    List<ProductEntity>? products,
  }) {
    navigatorKey.currentState?.pushNamed(
      AppRouter.category,
      arguments: {'category': category, 'products': products ?? []},
    );
  }

  static void navigateToBrand(
    BrandEntity brand, {
    List<ProductEntity>? products,
  }) {
    navigatorKey.currentState?.pushNamed(
      AppRouter.brand,
      arguments: {'brand': brand, 'products': products ?? []},
    );
  }

  static void navigateToProductDetail(ProductEntity product) {
    navigatorKey.currentState?.pushNamed(
      AppRouter.productDetail,
      arguments: product,
    );
  }

  static void navigateToAllProducts(
    String title,
    List<ProductEntity> products,
  ) {
    navigatorKey.currentState?.pushNamed(
      AppRouter.allProducts,
      arguments: {'title': title, 'products': products},
    );
  }
}
