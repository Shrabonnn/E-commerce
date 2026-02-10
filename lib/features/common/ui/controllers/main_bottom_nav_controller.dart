import 'package:get/get.dart';

class MainBottomNavController extends  GetxController {
  RxInt _selectedIndex = 0.obs;


  // baire theke accress korar jonno
  RxInt get selectedIndex => _selectedIndex ;
  void changeIndex(int index){
    if(index == _selectedIndex.value){
      return null;
    }
    _selectedIndex.value = index;
    //update();
  }


}