import 'package:ecommerce/app/app_theme_data.dart';
import 'package:ecommerce/app/controller_binder.dart';
import 'package:ecommerce/features/auth/ui/screens/complete_profile_screen.dart';
import 'package:ecommerce/features/auth/ui/screens/email_verification_screen.dart';
import 'package:ecommerce/features/auth/ui/screens/otp_verification_screen.dart';
import 'package:ecommerce/features/auth/ui/screens/splash_screen.dart';
import 'package:ecommerce/features/category/ui/screens/category_list_screen.dart';
import 'package:ecommerce/features/product/ui/screens/product_details_screeen.dart';
import 'package:ecommerce/features/product/ui/screens/product_list_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import '../features/common/ui/screens/main_bottom_nav_bar_screen.dart';

class CraftyBay extends StatelessWidget {
  const CraftyBay({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialBinding: ControllerBinder(),
      initialRoute: '/',
      theme:AppThemeData.lightThemeData,
      onGenerateRoute: (RouteSettings settings){
        late Widget widget;
        if (settings.name == SplashScreen.name) {
          widget = const SplashScreen();
        }
        else if (settings.name == EmailVerificationScreen.name) {
          widget = const EmailVerificationScreen();
        } else if (settings.name == OtpVerificationScreen.name) {
          //String email = settings.arguments as String;
          widget = OtpVerificationScreen();
        } else if (settings.name == CompleteProfileScreen.name) {
          widget = const CompleteProfileScreen();
        } else if (settings.name == MainBottomNavBarScreen.name) {
          widget = const MainBottomNavBarScreen();
        } else if (settings.name == CategoryListScreen.name) {
          widget = const CategoryListScreen();
        }
        else if (settings.name == ProductListScreen.name) {
          String name = settings.arguments as String;
          widget =  ProductListScreen(categoryName: name);
        }
        else if (settings.name == ProductDetailsScreeen.name) {
          int productId = settings.arguments as int;
          widget =  ProductDetailsScreeen(ProductID: productId);
        }
        return MaterialPageRoute(
          builder: (ctx) {
            return widget;
          },
        );
      }

    );
  }
}
