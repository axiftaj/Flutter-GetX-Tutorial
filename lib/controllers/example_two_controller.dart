import 'package:get/get.dart';

class ExampleTwoController  extends GetxController {

  RxDouble opacity = 0.4.obs ;

  RxBool notification = false.obs ;

  increment(double value){
    opacity.value = value ;
  }

  setNotification(bool value){
    notification.value = value ;
  }
}