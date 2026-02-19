import 'package:ecommerce/app/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SizePickerWidget extends StatefulWidget {
  const SizePickerWidget({super.key,required this.size});

  final List<String> size;
  @override
  State<SizePickerWidget> createState() => _SizePickerWidgetState();
}

class _SizePickerWidgetState extends State<SizePickerWidget> {
  String? _selected;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: getSizeItems()
    );
  }

  List<Widget> getSizeItems(){
    List<Widget> sizeList = [];
    for (String size in widget.size){
      sizeList.add(sizeItemWidget(name: size, onTap: (){
        _selected = size;
        setState(() {

        });
      }, isSelected: _selected==size));
    }
    return sizeList;
  }

  Widget sizeItemWidget({required String name,required VoidCallback onTap , required bool isSelected}){
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          border: Border.all(),
          color: isSelected ? AppColors.themeColor : Colors.transparent
        ),
        child: Text(name),
      ),
    );

  }

}
