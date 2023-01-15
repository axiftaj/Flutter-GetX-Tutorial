

import 'package:get/get.dart';

class CounterController  extends GetxController {

  final count = 0.obs ;

  increment(){
    count.value++ ;
  }
}