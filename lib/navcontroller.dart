import 'package:ecampus/bottomnavigation/chat.dart';
import 'package:get/get.dart';

class NavbarController extends GetxController{
  final RxInt  _index = 2.obs;
  // List widgets = [
  //   homemvc(),
  //   discuontpage(),
  //   chatpage(),
  //   campuspage(),///menu
  //   menu(),
  // ];
  RxInt get index => _index;

  void next(int index){
    _index.value = index;
  }


}