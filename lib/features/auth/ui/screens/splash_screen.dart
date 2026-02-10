import 'dart:async';

import 'package:ecommerce/app/assets_path.dart';
import 'package:ecommerce/features/auth/ui/screens/email_verification_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../widgets/app_logo_widget.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _moveToNextScreen();
  }

  Future<void> _moveToNextScreen () async{
    await Future.delayed(Duration(seconds: 3),);
    Navigator.pushReplacementNamed(context, EmailVerificationScreen.name);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Center(
          child: Column(
            children: [
              Spacer(),
              AppLogoWidget(),
              //Text("hello"),

              Spacer(),
              CircularProgressIndicator()
            ],
          ),
        ),
      ),
    );
  }
}


