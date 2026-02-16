
import 'package:flutter/material.dart';

import '../../../app/app_colors.dart';
import '../../../app/assets_path.dart';

class ProductItemWidget extends StatelessWidget {
  const ProductItemWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 140,
      child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(16)
        ),
        color: Colors.white,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: AppColors.themeColor.withOpacity(0.12),
                  borderRadius: BorderRadiusGeometry.only(topRight: Radius.circular(16),topLeft:  Radius.circular(16))
              ),
              child: Image.asset(AssetsPath.shoe,width: 140,height: 80,),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text("Nike show latest edition- RF45GM",maxLines: 1,overflow: TextOverflow.ellipsis,style: TextStyle(fontWeight: FontWeight.w600,color: Colors.black54),),
                  const SizedBox(height: 2,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("\$100",style: TextStyle(fontWeight: FontWeight.w600,color: Colors.black54)),
                      Wrap(children: [
                        Icon(Icons.star,size: 18,color: Colors.amber,),
                        Text("4.5",style: TextStyle(fontWeight: FontWeight.w600,color: Colors.black54)),
                      ],),
                      Container(
                        padding: EdgeInsets.all(4),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: AppColors.themeColor
                        ),
                        child: Icon(Icons.favorite_border,size: 14,),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
