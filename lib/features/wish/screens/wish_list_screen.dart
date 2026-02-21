import 'package:ecommerce/features/common/ui/controllers/main_bottom_nav_controller.dart';
import 'package:ecommerce/features/common/ui/widgets/category_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../common/ui/widgets/product_item_widget.dart';

class WishListScreen extends StatefulWidget {
  const WishListScreen({super.key});

  static const String name ='/wish-list-screen';

  @override
  State<WishListScreen> createState() => _WishListScreenState();
}

class _WishListScreenState extends State<WishListScreen> {
  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (_,_){
        onPop();
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text("Wish list"),
          leading: IconButton(onPressed: onPop,
              icon: Icon(Icons.arrow_back_ios)),
        ),
        body: GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 3,
          childAspectRatio: 0.8,
          crossAxisSpacing: 2,
          mainAxisSpacing: 4
      ),
        itemCount: 20,
        itemBuilder: (context, index){
          return FittedBox(
            child: ProductItemWidget(),
          );
        }),
      ),
    );
  }

  void onPop(){
    Get.find<MainBottomNavController>().backToHome();
  }
}
