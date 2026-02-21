import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';

import '../../../../app/app_colors.dart';
import '../../../../app/assets_path.dart';
import '../widgets/cart_product_item_widget.dart';
import '../../../common/ui/controllers/main_bottom_nav_controller.dart';


class CartListScreen extends StatefulWidget {
  const CartListScreen({super.key});

  @override
  State<CartListScreen> createState() => _CartListScreenState();
}

class _CartListScreenState extends State<CartListScreen> {

  @override
  Widget build(BuildContext context) {
    final textTheme= Theme.of(context).textTheme;

    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) {
        onPop();
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text('Cart'),
          leading: IconButton(onPressed: onPop, icon: Icon(Icons.arrow_back_ios)),
        ),
        body: Column(
          children: [
            Expanded(
                child: ListView.builder(
                itemCount: 6,
                itemBuilder: (context, index) {
                  return CartProductItemWidget();
                })),
            _buildCartCheckoutSection(textTheme)
          ],
        ),
      ),
    );
  }









  Container _buildCartCheckoutSection(TextTheme textTheme) {
    return Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(color: AppColors.themeColor.withOpacity(0.15)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Total Price', style: textTheme.titleSmall?.copyWith(color: Colors.black54)),
                Text(
                  '\$100,000.00',
                  style: const TextStyle(
                      color: AppColors.themeColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 18),
                ),
              ],
            ),
            SizedBox(
              width: 130,
              height: 40,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('Checout'),
              ),
            )
          ],
        ),
      );
  }


  void onPop(){
    Get.find<MainBottomNavController>().backToHome();
  }
}


