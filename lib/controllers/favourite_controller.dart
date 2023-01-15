

import 'package:get/get.dart';

class FavouriteController extends GetxController {


  RxList fruit = [].obs ;

  RxList<String> fruitList = ['Apple' , 'Orange' , 'Grapes' , 'Mango'].obs ;

  addToFavourite(String value){
    fruit.add(value);
  }
  removeFromFavourite(String value){
    fruit.remove(value);
  }
}