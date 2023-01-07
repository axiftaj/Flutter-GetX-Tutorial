

import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
                Get.snackbar(
                    'Asif Taj',
                    'Subscribe to my channel' ,
                    icon: Icon(Icons.add),
                    onTap: (snap){

                    },
                    mainButton: TextButton(onPressed: (){}, child: Text('Click')),
                    backgroundColor: Colors.blue ,
                    snackPosition: SnackPosition.BOTTOM
                );
              },
              title: Text('Snakbar'),
              subtitle: Text('Getx Snakbar'),
            ),
          ),
          Card(
            child: ListTile(
              onTap: (){

                Get.defaultDialog(
                  titlePadding: EdgeInsets.only(top: 20),
                  title: 'Delete Chat' ,
                  contentPadding: EdgeInsets.all(20),
                  titleStyle: TextStyle(color: Colors.red),
               //   middleText: 'Are you sure you want to delete this chat? This will also delete the messages related to Posts ' ,
                   textCancel: 'Yes' ,
                   textConfirm: 'No' ,
               //  buttonColor: Colors.red,
                 confirm: GestureDetector(
                     onTap: (){
                       Get.back();
                     },
                     child: const Text('Confirm')) ,
                 cancel: GestureDetector(
                     onTap: (){
                       Get.back();
                     },
                     child: Text('Cancel')) ,
                 //  onCancel: (){
                 //    Get.back();
                 //  },
                 //  onConfirm: (){
                 //    Get.back();
                 //  },
                 //  content: Column(
                 //    children: [
                 //      Text('asdfsf'),
                 //      Text('asdfsf'),
                 //      Text('asdfsf'),
                 //      Text('asdfsf'),
                 //
                 //    ],
                 //  )

                );
              },
              title: Text('Get Dialaog Alert'),
              subtitle: Text('Get Dialog alert example'),
            ),
          ),

        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){


      }),
    );
  }
}
