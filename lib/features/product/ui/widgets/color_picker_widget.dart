import 'package:ecommerce/app/app_colors.dart';
import 'package:flutter/material.dart';

class ColorPickerwidget extends StatefulWidget {
  const ColorPickerwidget({super.key, required this.colors, required this.onChanged});

  final Function(String) onChanged;

  final List<String> colors;
  @override
  State<ColorPickerwidget> createState() => _ColorPickerwidgetState();
}

class _ColorPickerwidgetState extends State<ColorPickerwidget> {

  String ? _selectedColor ;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: getColorItems()
      ),
    );
  }

  List<Widget> getColorItems(){
    List<Widget> colorList =[];
    for(String color in widget.colors){
      colorList.add(getColorItemWidget(name: color, onTap: (){
        _selectedColor = color;
        widget.onChanged(_selectedColor!);
        setState(() {

        });
      },isSelected: _selectedColor==color));
    }
    return colorList;
  }
  
  Widget getColorItemWidget({required String name,required VoidCallback onTap,required bool isSelected}){
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(8),
        margin: EdgeInsets.all(4),
        decoration: BoxDecoration(
          border: Border.all(),
          color: isSelected ? AppColors.themeColor : Colors.transparent
        ),
        alignment:Alignment.center,
        child: Text(name),
      ),
    );
  }
}
