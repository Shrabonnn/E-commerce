import 'package:flutter/material.dart';

import '../../../../app/app_colors.dart';
import '../../../../app/assets_path.dart';
import '../../../common/ui/widgets/product_quantity_inc_dec_button.dart';

class CartProductItemWidget extends StatelessWidget {
  const CartProductItemWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    final textTheme= Theme.of(context).textTheme;

    return Card(
      elevation: 1,
      margin: EdgeInsets.symmetric(horizontal: 16,vertical: 4),
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 16),
        child: Row(
          children: [
            Image.asset(
              AssetsPath.shoe, width: 90, height: 90,fit: BoxFit.scaleDown,),
            Expanded(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('New Year Speacial Shoe',maxLines: 1,
                              style: textTheme.bodyLarge?.copyWith(overflow: TextOverflow.ellipsis)),
                          Row(
                            children: [
                              Text('Color: Red'),
                              SizedBox(width: 8,),
                              Text('Size : XL'),
                            ],
                          ),],
                      ),
                      IconButton(onPressed: (){}, icon:Icon(Icons.delete_outline))
                    ],
                  ),
                  SizedBox(height: 8,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment
                        .spaceBetween,
                    children: [
                      Text("\$100",style: textTheme.titleSmall?.copyWith(color: AppColors.themeColor),),
                      ProductQuantityIncDecButton(
                        onChange: (int value) {

                        },
                      )
                    ],)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}