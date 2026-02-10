import 'package:ecommerce/app/app_colors.dart';
import 'package:ecommerce/features/auth/ui/screens/otp_verification_screen.dart';
import 'package:ecommerce/features/auth/ui/widgets/app_logo_widget.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

class EmailVerificationScreen extends StatefulWidget {
  const EmailVerificationScreen({super.key});

  static String name = '/email-verification';

  @override
  State<EmailVerificationScreen> createState() => _EmailVerificationScreenState();
}

class _EmailVerificationScreenState extends State<EmailVerificationScreen> {
  TextEditingController _emailTEController = TextEditingController();
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
                  Text("Welcome Back",style: Theme.of(context).textTheme.titleLarge,),
                  Text("Enter your email address",style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.w400),),
                  SizedBox(height: 24,),
                  TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    keyboardType: TextInputType.emailAddress,
                    validator: (String? value){
                      if(value==null || value.trim().isEmpty){
                        return "Enter Email Address";
                      }
                      if(EmailValidator.validate(value)==false){
                        return "Enter a Valid Email Address";
                      }
                      return null;
                    },
                    controller: _emailTEController,
                    decoration: InputDecoration(
                      hintText: "Email Address",
                    ),
                  ),
                  SizedBox(height: 16,),
                  ElevatedButton(onPressed: () {
                    //if(_formkey.currentState!.validate()){}

                    Navigator.pushReplacementNamed(context, OtpVerificationScreen.name);
                  },
                    child: Text("Next"),
                    )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
