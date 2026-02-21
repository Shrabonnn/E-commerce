import 'package:ecommerce/features/product/ui/screens/product_details_screeen.dart';
import 'package:ecommerce/features/review/ui/screens/create_review_screen.dart';
import 'package:flutter/material.dart';

import '../../../../app/app_colors.dart';

class ReviewsListScreen extends StatefulWidget {
  const ReviewsListScreen({super.key});

  static String name = '/category/reviews';

  @override
  State<ReviewsListScreen> createState() => _ReviewsListScreenState();
}

class _ReviewsListScreenState extends State<ReviewsListScreen> {
  @override
  Widget build(BuildContext context) {

    final textTheme = Theme.of(context).textTheme;
    
    return Scaffold(
      appBar: AppBar(
        title: Text('Reviews'),
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back_ios)),
      ),
      body: Column(
        children: [

          Expanded(
              child: ListView.builder(
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return Card(
                      elevation: 1,
                      margin: EdgeInsets.symmetric(horizontal: 16,vertical: 4),
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 16),
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      CircleAvatar(
                                        backgroundColor: AppColors.themeColor.withOpacity(0.15),
                                        child:Icon(Icons.person_outline_rounded,color: Colors.grey,size: 25,),
                                      ),
                                      SizedBox(width: 4,),
                                      Text("Taufiqul Islam",
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style:TextStyle(
                                          fontSize: 20,
                                          color: Colors.black54
                                      ),)
                                    ],
                                  ),
                                  SizedBox(height: 4,),
                                  Text('It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using Content here, content here, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for  will uncover many web sites still in their infancy.',
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 4,
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                    ),)

                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  })),
          _buildReviewAddSection(textTheme)
        ],
      ),
    );
  }

  Container _buildReviewAddSection(TextTheme textTheme) {
    return Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
              color: AppColors.themeColor.withOpacity(0.2),
              //color: Colors.black54,
              borderRadius: BorderRadiusGeometry.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16))
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Reviews', style: textTheme.titleMedium?.copyWith(color: Colors.black54)),
                    SizedBox(width: 8,),
                    Text(
                      '(1000)',
                      style: const TextStyle(
                          color: AppColors.themeColor,
                          fontWeight: FontWeight.w600,
                          fontSize: 18),
                    ),
                  ],
                ),
              ),
              CircleAvatar(
                maxRadius: 25,
                backgroundColor: Colors.grey.shade500,
                child: IconButton(onPressed: (){

                  Navigator.pushNamed(context, CreateReviewScreen.name);
                }, icon: Icon(Icons.add),color: Colors.white,),
              )
            ],
          ),
        );
  }
}
