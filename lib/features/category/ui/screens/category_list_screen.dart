import 'package:ecommerce/features/common/ui/controllers/main_bottom_nav_controller.dart';
import 'package:ecommerce/features/common/ui/widgets/category_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoryListScreen extends StatefulWidget {
  const CategoryListScreen({super.key});

  static const String name ='/category-list-screen';

  @override
  State<CategoryListScreen> createState() => _CategoryListScreenState();
}

class _CategoryListScreenState extends State<CategoryListScreen> {
  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (_,_){
        onPop();
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text("Category list"),
          leading: IconButton(onPressed: onPop,
              icon: Icon(Icons.arrow_back_ios)),
        ),
        body: GridView.builder(
          itemCount: 20,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            crossAxisSpacing: 2,
            mainAxisSpacing: 16
          ),
          itemBuilder: (context, index) {
            return FittedBox(child: CategoryItemWidget());
          },
        ),
      ),
    );
  }

  void onPop(){
    Get.find<MainBottomNavController>().backToHome();
  }
}
