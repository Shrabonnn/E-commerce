import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce/app/app_colors.dart';
import 'package:flutter/material.dart';

class ProductImagesCarouselSlider extends StatefulWidget {
  ProductImagesCarouselSlider({
    super.key,
  });

  @override
  State<ProductImagesCarouselSlider> createState() => _ProductImagesCarouselSliderState();
}

class _ProductImagesCarouselSliderState extends State<ProductImagesCarouselSlider> {
  final ValueNotifier<int> _selectedIndex = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CarouselSlider(
          options: CarouselOptions(
              height: 200,
              viewportFraction: 0.95,
              onPageChanged:(currentIndex ,reason){
                _selectedIndex.value = currentIndex;
              }
          ),

          items: [1,2,3,4,5].map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                    ),
                    child: Center(child: Text('text $i', style: TextStyle(fontSize: 16.0),))
                );
              },
            );
          }).toList(),
        ),
        Positioned(
          bottom: 8,
          left: 0,
          right: 0,
          child: ValueListenableBuilder(
              valueListenable: _selectedIndex,
              builder: (context,value, _){
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    for(int i =0 ; i<5 ;i++)
                      Padding(
                        padding: const EdgeInsets.only(right: 2.0),
                        child: Container(height: 16,width: 16,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadiusGeometry.circular(20),
                            border: Border.all(color: Colors.grey.shade300),
                            color: value==i ? AppColors.themeColor : Colors.white

                        ),),
                      )

                  ],
                );


              }),
        )

      ],
    );
  }
}