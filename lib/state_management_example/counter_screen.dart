import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/counter_example.dart';


class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {

  final CounterController controller = Get.put(CounterController());


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
