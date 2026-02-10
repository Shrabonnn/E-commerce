import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';


import '../../../common/ui/screens/main_bottom_nav_bar_screen.dart';
import '../widgets/app_logo_widget.dart';

class CompleteProfileScreen extends StatefulWidget {
  const CompleteProfileScreen({super.key});

  static String name = '/complete-Profile-screen';

  @override
  State<CompleteProfileScreen> createState() => _CompleteProfileScreenState();
}

class _CompleteProfileScreenState extends State<CompleteProfileScreen> {


  final TextEditingController _firstNameTEController = TextEditingController();
  final TextEditingController _lastNameTEController = TextEditingController();
  final TextEditingController _mobileTEController = TextEditingController();
  final TextEditingController _cityTEController = TextEditingController();
  final TextEditingController _emailTEController = TextEditingController();
  final TextEditingController _shippingAddressTEController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              const SizedBox(height: 60),
              const AppLogoWidget(
                width: 100,
                height: 100,
              ),
              const SizedBox(height: 16),
              Text(
                'Complete Profile',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              Text(
                'Get started with us with your details',
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge
                    ?.copyWith(color: Colors.grey),
              ),
              const SizedBox(height: 24),
              _buildForm(),
              ElevatedButton(onPressed: () {
                //if(_formKey.currentState!.validate()){}
                //Navigator.pushReplacementNamed(context, CompleteProfileScreen.name);
                Navigator.pushReplacementNamed(context, MainBottomNavBarScreen.name);
              },
                child: Text("Complete"),
              ),

            ],
          ),
        ),
      ),
    );
  }

  Widget _buildForm() {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            controller: _emailTEController,
            decoration: const InputDecoration(hintText: 'Email'),
            validator: (String? value) {
              if (value?.trim().isEmpty ?? true) {
                return 'Enter your email address';
              }
              if (EmailValidator.validate(value!) == false) {
                return 'Enter a valid email address';
              }
              return null;
            },
          ),
          const SizedBox(height: 8),
          TextFormField(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            controller: _firstNameTEController,
            decoration: const InputDecoration(hintText: 'First Name'),
            validator: (String? value) {
              if (value?.trim().isEmpty ?? true) {
                return 'Enter valid your first name';
              }
              return null;
            },
          ),
          const SizedBox(height: 8),
          TextFormField(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            controller: _lastNameTEController,
            decoration: const InputDecoration(hintText: 'Last Name'),
            validator: (String? value) {
              if (value?.trim().isEmpty ?? true) {
                return 'Enter your last name';
              }
              return null;
            },
          ),
          const SizedBox(height: 8),
          TextFormField(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            controller: _mobileTEController,
            keyboardType: TextInputType.phone,
            maxLength: 11,
            decoration: const InputDecoration(hintText: 'Mobile'),
            validator: (String? value) {
              if (value?.trim().isEmpty ?? true) {
                return 'Enter your mobile number';
              }
              if (RegExp(r'^01[3-9]\d{8}$').hasMatch(value!) == false) {
                return 'Enter valid mobile number';
              }
              return null;
            },
          ),
          const SizedBox(height: 8),
          TextFormField(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            controller: _cityTEController,
            decoration: const InputDecoration(hintText: 'City'),
            validator: (String? value) {
              if (value?.trim().isEmpty ?? true) {
                return 'Enter valid city';
              }
              return null;
            },
          ),
          const SizedBox(height: 8),
          TextFormField(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            controller: _shippingAddressTEController,
            decoration: const InputDecoration(hintText: 'Shipping Address'),
            validator: (String? value) {
              if ((value?.isEmpty ?? true) ) {
                return 'Enter a shipping address';
              }
              return null;
            },
            maxLines: 5,

          ),
          const SizedBox(height: 16),

        ],
      ),
    );
  }
}
