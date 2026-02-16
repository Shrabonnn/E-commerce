import 'package:ecommerce/app/app_colors.dart';
import 'package:ecommerce/app/assets_path.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../widgets/app_bar_icon_data.dart';
import '../widgets/category_item_widget.dart';
import '../widgets/home_carousel_slider.dart';
import '../widgets/home_section_header.dart';
import '../widgets/product_item_widget.dart';
import '../widgets/search_bar.dart';

class HomeScreens extends StatefulWidget {
  const HomeScreens({super.key});

  @override
  State<HomeScreens> createState() => _HomeScreensState();
}

class _HomeScreensState extends State<HomeScreens> {
  @override
  Widget build(BuildContext context) {

    TextEditingController searchController = TextEditingController();


    return Scaffold(
      appBar: _buildAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              ProductSearchBar(controller: searchController,),
              SizedBox(height: 16,),
              HomeCarouselSlider(),
              SizedBox(height: 16,),
              HomeSectionHeader(
                title: "All Category",
                onTap: (){},
              ),
              const SizedBox(height: 8,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: _getCategoryItemList()

                ),
              ),
              const SizedBox(height: 16,),
              HomeSectionHeader(
                title: "Product",
                onTap: (){},
              ),
              const SizedBox(height: 8,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                    children: _getProductItemList()

                ),
              ),
              const SizedBox(height: 16,),
              HomeSectionHeader(
                title: "Special",
                onTap: (){},
              ),
              const SizedBox(height: 8,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                    children: _getProductItemList()

                ),
              ),
              const SizedBox(height: 16,),
              HomeSectionHeader(
                title: "New",
                onTap: (){},
              ),
              const SizedBox(height: 8,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                    children: _getProductItemList()

                ),
              ),
              const SizedBox(height: 16,),


            ],
          ),
        ),
      ),


    );
  }
  List<Widget> _getCategoryItemList(){
    List<Widget> categoryList =[];
    for(int i = 0 ;i< 10 ; i++){
      categoryList.add(Padding(
        padding: const EdgeInsets.only(right: 16.0),
        child: CategoryItemWidget(),
      ));
    }
    return categoryList;
  }

  List<Widget> _getProductItemList(){
    List<Widget> productList =[];
    for(int i = 0 ;i< 10 ; i++){
      productList.add(Padding(
        padding: const EdgeInsets.only(right: 16.0),
        child: ProductItemWidget(),
      ));
    }
    return productList;
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: SvgPicture.asset(AssetsPath.navbarlogo_nav),
      actions: [
        AppBarIconButton(icon: Icons.person, onTap: (){},),
        const SizedBox(width: 8,),
        AppBarIconButton(icon: Icons.call_outlined, onTap: (){},),
        const SizedBox(width: 8,),
        AppBarIconButton(icon: Icons.notifications_active_outlined, onTap: (){},),
        const SizedBox(width: 8,),
      ],
    );
  }
}










