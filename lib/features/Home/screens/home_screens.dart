import 'package:ecommerce/app/assets_path.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../widgets/app_bar_icon_data.dart';
import '../widgets/home_carousel_slider.dart';
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
              HomeCarouselSlider()

            ],
          ),
        ),
      ),


    );
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






