import 'package:ecommerce/app/app_colors.dart';
import 'package:ecommerce/features/auth/ui/screens/complete_profile_screen.dart';
import 'package:ecommerce/features/auth/ui/widgets/app_logo_widget.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpVerificationScreen extends StatefulWidget {
  const OtpVerificationScreen({super.key});

  static String name = '/otp-verification';

  @override
  State<OtpVerificationScreen> createState() => _OtpVerificationScreenState();
}

class _OtpVerificationScreenState extends State<OtpVerificationScreen> {
  TextEditingController _otpTEController = TextEditingController();
  GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Center(
            child: Form(
              key: _formkey,
              child: Column(
                children: [
                  SizedBox(height: 160,),
                  AppLogoWidget(),
                  SizedBox(height: 24,),
                  Text("Enter OTP Code",style: Theme.of(context).textTheme.titleLarge,),
                  Text("A 4 digit otp has been sent to your email",style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.w400,color: AppColors.themeColor),),

                  SizedBox(height: 16,),
                  PinCodeTextField(
                    length: 4,
                    obscureText: false,
                    animationType: AnimationType.fade,
                    animationDuration: Duration(milliseconds: 300),
                    appContext: context,
                    pinTheme:PinTheme(
                      shape: PinCodeFieldShape.box,
                      borderRadius: BorderRadius.circular(8),
                      activeFillColor: AppColors.themeColor,
                      inactiveColor: AppColors.themeColor
                    ),
                    validator: (String? value){
                      if(value?.length!=4){
                        return "Enter your Otp";
                      }
                      return null;
                    },

                  ),
                  SizedBox(height: 16,),
                  ElevatedButton(onPressed: () {
                    //if(_formkey.currentState!.validate()){}
                    Navigator.pushReplacementNamed(context, CompleteProfileScreen.name);
                  },
                    child: Text("Next"),
                  ),
                  SizedBox(height: 16,),
                  RichText(
                    text: TextSpan(
                      text: 'This code will be expire in ',
                      style: TextStyle(
                        color: Colors.grey
                      ),
                      children: [
                        TextSpan(text: '120s', style: TextStyle(fontWeight: FontWeight.bold,color: AppColors.themeColor)),
                        TextSpan(text: ' world!'),
                      ],
                    ),
                  ),
                  TextButton(onPressed: (){}, child: const Text("Resend Code"))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
