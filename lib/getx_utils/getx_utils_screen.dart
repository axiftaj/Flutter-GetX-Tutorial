import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetXUtilScreen extends StatefulWidget {
  const GetXUtilScreen({Key? key}) : super(key: key);

  @override
  State<GetXUtilScreen> createState() => _GetXUtilScreenState();
}

class _GetXUtilScreenState extends State<GetXUtilScreen> {
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
          Card(
            child: ListTile(
              onTap: (){

                Get.bottomSheet(
                  Container(
                    decoration:  const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30)
                        )
                    ),
                    child: Column(
                      children: [
                        ListTile(
                          onTap: (){
                            Get.changeTheme( ThemeData.light());
                          },
                          leading: const Icon(Icons.light_mode),
                          title: const Text('Light mode'),
                          subtitle: const Text('Light mode'),
                        ),
                        ListTile(
                          onTap: (){
                            Get.changeTheme( ThemeData.dark());
                          },
                          leading: const Icon(Icons.dark_mode),
                          title: const Text('Dark mode'),
                          subtitle: const Text('Dark mode'),
                        )
                      ],
                    ),
                  ) ,
                  elevation: 1 ,
                );
              },
              title: const Text('Get Bottom Sheet'),
              subtitle: const Text('How to change Light and Dark Mode with GetX'),
            ),
          ),
          Card(
            child: ListTile(
              onTap: (){
                GetUtils.isEmail('axiftaj@gmail.com').printError(info: 'error');
              },
              title: const Text('GetX Utils'),
              subtitle: const Text('Getx Utilities'),
            ),
          ),

        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){


      }),
    );
  }
}
