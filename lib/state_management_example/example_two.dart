import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controllers/example_two_controller.dart';
import '../controllers/counter_example.dart';


class ExampleTwo extends StatefulWidget {
  const ExampleTwo({Key? key}) : super(key: key);

  @override
  State<ExampleTwo> createState() => _ExampleTwoState();
}

class _ExampleTwoState extends State<ExampleTwo> {

  final ExampleTwoController controller = Get.put(ExampleTwoController());


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GetX Example Two'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Obx(() => Container(
              height: 200,
              width: 200,
              color: Colors.red.withOpacity(controller.opacity.value),
            )),
            Obx(() => Slider(value: controller.opacity.value , onChanged: (value){
              controller.increment(value);
            })) ,
            SizedBox(height: 40,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Notification'),
                Obx(() => Switch(value: controller.notification.value, onChanged: (value){
                    controller.setNotification(value);
                }))
              ],
            )
          ],
        ),
      ),
    );
  }
}
