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
import '../../features/home/domain/entities/client_entity.dart';

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
        return PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) => CategoryPage(
            category: args['category'] as CategoryEntity,
            products: args['products'] as List<ProductEntity>? ?? [],
            clients: args['clients'] as List<ClientEntity>? ?? [],
          ),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            const begin = Offset(1.0, 0.0);
            const end = Offset.zero;
            const curve = Curves.easeInOutCubic;

            var tween = Tween(
              begin: begin,
              end: end,
            ).chain(CurveTween(curve: curve));

            var offsetAnimation = animation.drive(tween);

            return SlideTransition(position: offsetAnimation, child: child);
          },
          transitionDuration: const Duration(milliseconds: 300),
        );

      case brand:
        final args = settings.arguments as Map<String, dynamic>;
        return PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) => BrandPage(
            brand: args['brand'] as BrandEntity,
            products: args['products'] as List<ProductEntity>? ?? [],
            clients: args['clients'] as List<ClientEntity>? ?? [],
          ),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            const begin = Offset(1.0, 0.0);
            const end = Offset.zero;
            const curve = Curves.easeInOutCubic;

            var tween = Tween(
              begin: begin,
              end: end,
            ).chain(CurveTween(curve: curve));

            var offsetAnimation = animation.drive(tween);

            return SlideTransition(position: offsetAnimation, child: child);
          },
          transitionDuration: const Duration(milliseconds: 300),
        );

      case productDetail:
        final args = settings.arguments as Map<String, dynamic>;
        final product = args['product'] as ProductEntity;
        final client = args['client'] as ClientEntity?;
        return PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) =>
              ProductDetailPage(product: product, client: client),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            const begin = Offset(0.0, 1.0);
            const end = Offset.zero;
            const curve = Curves.easeInOutCubic;

            var tween = Tween(
              begin: begin,
              end: end,
            ).chain(CurveTween(curve: curve));

            var offsetAnimation = animation.drive(tween);

            return SlideTransition(
              position: offsetAnimation,
              child: FadeTransition(opacity: animation, child: child),
            );
          },
          transitionDuration: const Duration(milliseconds: 400),
        );

      case allProducts:
        final args = settings.arguments as Map<String, dynamic>;
        return PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) =>
              AllProductsPage(
                title: args['title'] as String,
                products: args['products'] as List<ProductEntity>,
                clients: args['clients'] as List<ClientEntity>,
              ),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            const begin = Offset(1.0, 0.0);
            const end = Offset.zero;
            const curve = Curves.easeInOutCubic;

            var tween = Tween(
              begin: begin,
              end: end,
            ).chain(CurveTween(curve: curve));

            var offsetAnimation = animation.drive(tween);

            return SlideTransition(position: offsetAnimation, child: child);
          },
          transitionDuration: const Duration(milliseconds: 300),
        );

      case checkout:
        return PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) =>
              const CheckoutPage(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            const begin = Offset(0.0, 1.0);
            const end = Offset.zero;
            const curve = Curves.easeInOutCubic;

            var tween = Tween(
              begin: begin,
              end: end,
            ).chain(CurveTween(curve: curve));

            var offsetAnimation = animation.drive(tween);

            return SlideTransition(position: offsetAnimation, child: child);
          },
          transitionDuration: const Duration(milliseconds: 400),
        );

      case orders:
        return PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) =>
              const OrdersPage(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            const begin = Offset(1.0, 0.0);
            const end = Offset.zero;
            const curve = Curves.easeInOutCubic;

            var tween = Tween(
              begin: begin,
              end: end,
            ).chain(CurveTween(curve: curve));

            var offsetAnimation = animation.drive(tween);

            return SlideTransition(position: offsetAnimation, child: child);
          },
          transitionDuration: const Duration(milliseconds: 300),
        );

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
    List<ClientEntity>? clients,
  }) {
    navigatorKey.currentState?.pushNamed(
      AppRouter.category,
      arguments: {
        'category': category,
        'products': products ?? [],
        'clients': clients ?? [],
      },
    );
  }

  static void navigateToBrand(
    BrandEntity brand, {
    List<ProductEntity>? products,
    List<ClientEntity>? clients,
  }) {
    navigatorKey.currentState?.pushNamed(
      AppRouter.brand,
      arguments: {
        'brand': brand,
        'products': products ?? [],
        'clients': clients ?? [],
      },
    );
  }

  static void navigateToProductDetail(
    ProductEntity product, {
    ClientEntity? client,
  }) {
    navigatorKey.currentState?.pushNamed(
      AppRouter.productDetail,
      arguments: {'product': product, 'client': client},
    );
  }

  static void navigateBack() {
    navigatorKey.currentState?.pop();
  }

  static void navigateToAllProducts(
    String title,
    List<ProductEntity> products,
    List<ClientEntity> clients,
  ) {
    navigatorKey.currentState?.pushNamed(
      AppRouter.allProducts,
      arguments: {'title': title, 'products': products, 'clients': clients},
    );
  }
}
