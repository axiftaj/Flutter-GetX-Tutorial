import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/state_management_example/counter_screen.dart';
import 'package:getx/state_management_example/example_two.dart';
import 'package:getx/state_management_example/image_picker_screen.dart';
import 'package:getx/state_management_example/login_screen.dart';

import 'favourite_screen.dart';

class StateManagementScreen extends StatefulWidget {
  const StateManagementScreen({Key? key}) : super(key: key);

  @override
  State<StateManagementScreen> createState() => _StateManagementScreenState();
}

class _StateManagementScreenState extends State<StateManagementScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GetX State Management Example'),
      ),
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
          Card(
            child: ListTile(
              onTap: (){
                Get.to(const FavouriteScreen());
              },
              title: const Text('Favourite App'),
              subtitle: const Text('How to make favourite from lists of fruits'),
            ),
          ),
          Card(
            child: ListTile(
              onTap: (){
                Get.to(const ImagePickerScreen());
              },
              title: const Text('GetX Image Picker'),
              subtitle: const Text('How to pick image with Getx'),
            ),
          ),

          Card(
            child: ListTile(
              onTap: (){
                Get.to(const LoginScreen());
              },
              title: const Text('Login API with GetX'),
              subtitle: const Text('How to login with Rest API using GetX'),
            ),
          ),
        ],
      ),
    );
  }
}
