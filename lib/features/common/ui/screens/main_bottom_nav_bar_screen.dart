
import 'package:ecommerce/features/category/ui/screens/category_list_screen.dart';
import 'package:ecommerce/features/common/ui/controllers/main_bottom_nav_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Home/ui/screens/home_screens.dart';

class MainBottomNavBarScreen extends StatefulWidget {
  const MainBottomNavBarScreen({super.key});

  static String name = '/main-bottom-nav-screen';
  @override
  State<MainBottomNavBarScreen> createState() => _MainBottomNavBarScreenState();
}

class _MainBottomNavBarScreenState extends State<MainBottomNavBarScreen> {
  MainBottomNavController mainBottomNavController = Get.find<MainBottomNavController>();

  final List<Widget> _screens =[
    HomeScreens(),
    CategoryListScreen(),
    HomeScreens(),
    HomeScreens(),
  ];
  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainBottomNavController>(builder: (bottomNavController) {
      return Scaffold(
          body: _screens[mainBottomNavController.selectedIndex.value],
          bottomNavigationBar: Obx(()=>NavigationBar(

            selectedIndex: mainBottomNavController.selectedIndex.value,
            onDestinationSelected: mainBottomNavController.changeIndex,
            destinations:const [
              NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
              NavigationDestination(icon: Icon(Icons.category), label: 'Categories'),
              NavigationDestination(icon: Icon(Icons.shopping_cart), label: 'Cart'),
              NavigationDestination(icon: Icon(Icons.favorite_border), label: 'Wish'),
            ],
          ),
          ),
      );
    },
    );
  }
}

