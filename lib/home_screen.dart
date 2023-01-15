

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/getx_routes/getx_routes_screen.dart';
import 'package:getx/getx_utils/getx_utils_screen.dart';
import 'package:getx/state_management_example/counter_screen.dart';
import 'package:getx/state_management_example/state_management_screen.dart';

import 'getx_localization/get_localization_screen.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GetX Tutorials'),
      ),
      body: Column(
        children: [
          Card(
            child: ListTile(
              onTap: (){
                Get.to(const GetXUtilScreen());
              },
              title: const Text('GetX Utils'),
              subtitle: const Text('Getx Utils with source code like, snackbar, dialog alert, bottom nav bar, change app theme'),
            ),
          ),
          Card(
            child: ListTile(
              onTap: (){
                Get.to(const GetXRoutesScreen());
              },
              title: const Text('GetX Routes'),
              subtitle: const Text('GetX Routes with source code '),
            ),
          ),
          Card(
            child: ListTile(
              onTap: (){
                Get.to(const GetXLocalizationScreen());
              },
              title: const Text('GetX Localization'),
              subtitle: const Text('Change language of the app using GetX'),
            ),
          ),

          Card(
            child: ListTile(
              onTap: (){
                Get.to(const StateManagementScreen());
              },
              title: const Text('GetX State Management'),
              subtitle: const Text('A lof of example has been done to understand the GetX'),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){


      }),
    );
  }
}
