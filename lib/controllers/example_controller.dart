

import 'package:get/get.dart';

class ExampleOneController  extends GetxController {

  final count = 0.obs ;

  increment(){
    count.value++ ;
  }
}