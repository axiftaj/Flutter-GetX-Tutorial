import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/example_controller.dart';


class ExampleOneScreen extends StatefulWidget {
  const ExampleOneScreen({Key? key}) : super(key: key);

  @override
  State<ExampleOneScreen> createState() => _ExampleOneScreenState();
}

class _ExampleOneScreenState extends State<ExampleOneScreen> {

  final ExampleOneController controller = Get.put(ExampleOneController());


  @override
  Widget build(BuildContext context) {
    print('value');
    return Scaffold(
      appBar: AppBar(
        title: Text('GetX Counter Example'),
      ),
      body: Column(
        children: [
          Obx((){
            return Text(controller.count.toString());
          })
        ],
      ),
    floatingActionButton: FloatingActionButton(
    onPressed: (){
      controller.increment();
    },
    ),
    );
  }
}
