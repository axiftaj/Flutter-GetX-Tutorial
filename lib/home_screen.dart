

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/getx_routes/getx_routes_screen.dart';
import 'package:getx/getx_utils/getx_utils_screen.dart';


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
                Get.to(GetXUtilScreen());
              },
              title: const Text('GetX Utils'),
              subtitle: const Text('Getx Utils with source code like, snackbar, dialog alert, bottom nav bar, change app theme'),
            ),
          ),

          Card(
            child: ListTile(
              onTap: (){
                Get.to(GetXRoutesScreen());
              },
              title: const Text('GetX Routes'),
              subtitle: const Text('GetX Routes with source code '),
            ),
          ),

        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){


      }),
    );
  }
}
