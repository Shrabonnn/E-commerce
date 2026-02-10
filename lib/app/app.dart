import 'package:ecommerce/app/app_theme_data.dart';
import 'package:ecommerce/app/controller_binder.dart';
import 'package:ecommerce/features/auth/ui/screens/complete_profile_screen.dart';
import 'package:ecommerce/features/auth/ui/screens/email_verification_screen.dart';
import 'package:ecommerce/features/auth/ui/screens/otp_verification_screen.dart';
import 'package:ecommerce/features/auth/ui/screens/splash_screen.dart';
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
      routes: {
        '/' : (context)=> const SplashScreen(),
        EmailVerificationScreen.name : (context) => EmailVerificationScreen(),
        OtpVerificationScreen.name : (context) => OtpVerificationScreen(),
        CompleteProfileScreen.name: (context) => CompleteProfileScreen(),
        MainBottomNavBarScreen.name: (context) => MainBottomNavBarScreen(),
      },
    );
  }
}
