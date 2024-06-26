import 'package:flutter/material.dart';
import 'package:nikee/components/bottom_nav_bar.dart';
import 'package:nikee/pages/cart_page.dart';
import 'package:nikee/pages/shop_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Keep track of the selected index
  int _selectedIndex = 0;

  // Method to update selected index
  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // List of pages to navigate between
  final List<Widget> _pages = [
    // Shop page
    const ShopPage(),

    // Cart page
    const CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
        leading: Builder(
          builder: (context) {
            return IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: const Icon(
                Icons.menu,
                color: Colors.black,
              ),
            );
          },
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[900],
        child: Column(
          children: [
            // Logo
            DrawerHeader(
              child: Image.asset('lib/Images/Nike Logo Wallpaper Discover more Just Do It….jpeg'),
            ),
            Divider(
              color: Colors.grey[100],
            ),
            ListTile(
              onTap: () {
                Navigator.pop(context);
              },
              leading: const Icon(
                Icons.home,
                color: Colors.white,
              ),
              title: const Text(
                "Home",
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.pop(context);
              },
              leading: const Icon(
                Icons.info,
                color: Colors.white,
              ),
              title: const Text(
                "About",
                style: TextStyle(color: Colors.white),
              ),
            ),
            const Spacer(),
            ListTile(
              onTap: () {
                Navigator.pop(context);
              },
              leading: const Icon(
                Icons.logout,
                color: Colors.white,
              ),
              title: const Text(
                "Logout",
                style: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) {
          navigateBottomBar(index);
        },
      ),
    );
  }
}
