import 'package:flutter/material.dart';
import 'package:tradex_app/core/widgets/custom_bottom_nav_bar.dart';
import '../../../home/presentation/pages/home_page.dart';
import '../../../product/presentation/pages/account_page.dart';
import '../../../product/presentation/pages/cart_page.dart';
import '../../../product/presentation/pages/orders_page.dart';
import '../../../product/presentation/pages/search_page.dart';


class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 2;

  final List<Widget> _pages = [
    const OrdersPage(),
    const CartPage(),
    const HomePage(),
    const SearchPage(),
    const AccountPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: _currentIndex, children: _pages),
      bottomNavigationBar: CustomBottomNavBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
