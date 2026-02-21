import 'package:ecommerce/features/review/ui/screens/reviews_list_screen.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

class CreateReviewScreen extends StatefulWidget {
  const CreateReviewScreen({super.key});

  static String name = '/review/create_review';
  @override
  State<CreateReviewScreen> createState() => _CreateReviewScreenState();
}

class _CreateReviewScreenState extends State<CreateReviewScreen> {

  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _writeReviewController = TextEditingController();
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Create Review"),
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back_ios_new)),
      ),
     body: Padding(
       padding: const EdgeInsets.symmetric(vertical: 48,horizontal: 20),
       child: Column(
         children: [
           _buildForm(),
           const SizedBox(height: 32),
           ElevatedButton(onPressed: (){
             if(_formkey.currentState!.validate()){}
           }, child: Text("Submit"))
         ],
       ),
     ),
    );
  }

  Widget _buildForm() {
    return Form(
           key:_formkey ,
           child: Column(
             children: [
               TextFormField(
                 autovalidateMode: AutovalidateMode.onUserInteraction,
                 controller: _firstNameController,
                 decoration: const InputDecoration(
                   contentPadding: EdgeInsets.symmetric(vertical: 14,horizontal: 12),
                     hintText: 'First Name'),
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
               const SizedBox(height: 16),
               TextFormField(
                 autovalidateMode: AutovalidateMode.onUserInteraction,
                 controller: _lastNameController,
                 decoration: const InputDecoration(
                     contentPadding: EdgeInsets.symmetric(vertical: 14,horizontal: 12),
                     hintText: 'Last Name'),
                 validator: (String? value) {
                   if (value?.trim().isEmpty ?? true) {
                     return 'Enter valid your first name';
                   }
                   return null;
                 },
               ),
               const SizedBox(height: 16),
               TextFormField(
                 autovalidateMode: AutovalidateMode.onUserInteraction,
                 controller: _writeReviewController,
                 decoration: const InputDecoration(
                     hintText: 'Last Name'),
                 validator: (String? value) {
                   if (value?.trim().isEmpty ?? true) {
                     return 'Enter your last name';
                   }
                   return null;
                 },
                 maxLines: 8,
               ),

             ],
           ),
         );
  }
}
