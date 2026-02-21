import 'package:ecommerce/app/app_colors.dart';
import 'package:ecommerce/features/product/ui/widgets/color_picker_widget.dart';
import 'package:ecommerce/features/product/ui/widgets/size_picker_widget.dart';
import 'package:ecommerce/features/review/ui/screens/reviews_list_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

import '../../../common/ui/widgets/product_quantity_inc_dec_button.dart';
import '../widgets/product_images_carousel.dart';

class ProductDetailsScreeen extends StatefulWidget {
  const ProductDetailsScreeen({super.key, required this.ProductID});

  final int ProductID;

  static String name = '/product/product-detials';

  @override
  State<ProductDetailsScreeen> createState() => _ProductDetailsScreeenState();
}

class _ProductDetailsScreeenState extends State<ProductDetailsScreeen> {

  @override
  Widget build(BuildContext context) {
    final  textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        title: Text("Product Details"),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  ProductImagesCarouselSlider(),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Column(
                                children: [
                                  Text("Nike shoe A2ERF - New year special deal",style: textTheme.titleMedium,),
                                  Row(

                                    children: [

                                      Icon(Icons.star,size: 18,color: Colors.amber,),
                                      const SizedBox(width: 4,),
                                      Text("4.5",style: TextStyle(fontWeight: FontWeight.w600,color: Colors.grey)),
                                      TextButton(onPressed: (){
                                        Navigator.pushNamed(context, ReviewsListScreen.name);
                                      }, child: Text('Reviews')),
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
                            ),
                            const SizedBox(width: 8,),
                            ProductQuantityIncDecButton(
                              onChange: (int value){

                              },
                            )
                          ],
                        ),
                        SizedBox(height: 16,),
                        Text('Color',style: textTheme.titleMedium,),
                        SizedBox(height: 8,),
                        ColorPickerwidget(
                          colors: ['Red','Blue','Purple','Yellow'],
                          onChanged: (String color){

                          },
                        ),
                        SizedBox(height: 16,),
                        Text('Size',style: textTheme.titleMedium,),
                        SizedBox(height: 8,),
                        SizePickerWidget(
                          size: ['M','L','XL','XXL'],
                          onChanged: (String size){

                          },
                        ),
                        SizedBox(height: 16,),
                        Text('Description',style: textTheme.titleMedium,),
                        SizedBox(height: 8,),
                        Text('It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using Content here, content here, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for  will uncover many web sites still in their infancy.',style: TextStyle(color: Colors.grey,fontSize: 14,fontWeight: FontWeight.w400),)



                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          _buildPriceAndAddToCartSection(textTheme)
        ],
      ),
    );
  }

  Container _buildPriceAndAddToCartSection(TextTheme textTheme) {
    return Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(color: AppColors.themeColor.withOpacity(0.15)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Price', style: textTheme.titleSmall),
                  Text(
                    '\$100',
                    style: const TextStyle(
                        color: AppColors.themeColor,
                        fontWeight: FontWeight.w600,
                        fontSize: 18),
                  ),
                ],
              ),
              SizedBox(
                width: 130,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('Add to Cart'),
                ),
              )
            ],
          ),
        );
  }
}
