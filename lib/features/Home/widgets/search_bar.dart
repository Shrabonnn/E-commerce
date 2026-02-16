import 'package:flutter/material.dart';

class ProductSearchBar extends StatelessWidget {
  const ProductSearchBar({
    super.key, required this.controller,
  });

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal:16,),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide.none
          ),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide.none
          ),
          disabledBorder: OutlineInputBorder(
              borderSide: BorderSide.none
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
          fillColor: Colors.grey.shade300,
          hintText: 'Search',
          prefixIcon:Icon(Icons.search)


      ),
    );
  }
}