import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/getx_routes/screen_two.dart';


class ScreenOne extends StatefulWidget {
  final String name ;
  const ScreenOne({Key? key,required this.name}) : super(key: key);

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen One' + widget.name.toString()),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: TextButton(onPressed: (){
              //  Navigator.push(context, MaterialPageRoute(builder: (context) => ScreenOne()));
           //   Get.to(ScreenTwo());
              Get.toNamed('/screen2');
            }, child: Text('Go to Screen 2')),
          ),
          Center(
            child: TextButton(onPressed: (){
              //  Navigator.push(context, MaterialPageRoute(builder: (context) => ScreenOne()));
              Get.back();
            }, child: Text('Back')),
          )
        ],
      ),

    );
  }
}
