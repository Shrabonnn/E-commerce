import 'package:ecommerce/app/app_colors.dart';
import 'package:flutter/material.dart';

class ProductQuantityIncDecButton extends StatefulWidget {
  const ProductQuantityIncDecButton({super.key});

  @override
  State<ProductQuantityIncDecButton> createState() => _ProductQuantityIncDecButtonState();
}

class _ProductQuantityIncDecButtonState extends State<ProductQuantityIncDecButton> {
  int _count = 1;
  
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _buildIconButton(icon: Icon(Icons.remove),onTap: (){
          if(_count> 1){
            _count--;
            setState(() {

            });
          }

        },),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('${_count}',style: TextStyle(fontSize: 18),),
        ),
        _buildIconButton(icon: Icon(Icons.add),onTap: (){
          if(_count< 20){
            _count++;
            setState(() {

            });
          }
        },),

      ],
    );
  }
}

class _buildIconButton extends StatelessWidget {
  const _buildIconButton({
    super.key,
    required this.icon,
    required this.onTap,
  });
  final Icon icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35,
      width: 35,
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.themeColor,
          borderRadius: BorderRadiusGeometry.circular(4)
        ),
        child: IconButton(onPressed: onTap,
          icon: icon,
          color: Colors.white,
          padding: EdgeInsets.zero,
          alignment: AlignmentGeometry.center,),
      ),
    );
  }
}
