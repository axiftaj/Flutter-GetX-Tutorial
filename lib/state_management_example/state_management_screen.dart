

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/state_management_example/counter_screen.dart';
import 'package:getx/state_management_example/example_two.dart';

class StateManagementScreen extends StatefulWidget {
  const StateManagementScreen({Key? key}) : super(key: key);

  @override
  State<StateManagementScreen> createState() => _StateManagementScreenState();
}

class _StateManagementScreenState extends State<StateManagementScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Card(
            child: ListTile(
              onTap: (){
                Get.to(const CounterScreen());
              },
              title: const Text('GetX counter example'),
              subtitle: const Text('Simple example to increment the value of integer count'),
            ),
          ),
          Card(
            child: ListTile(
              onTap: (){
                Get.to(const ExampleTwo());
              },
              title: const Text('Example two'),
              subtitle: const Text('Example two to understand the Getx a bit more in detail'),
            ),
          ),
        ],
      ),
    );
  }
}
