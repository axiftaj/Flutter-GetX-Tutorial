

import 'dart:convert';
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';


class LoginController extends GetxController {

  final emailController = TextEditingController().obs ;
  final password = TextEditingController().obs ;

  RxBool loading = false.obs ;


  void loginApi()async{

    loading.value = true ;
    try{

      final response = await post(Uri.parse('https://reqres.in/api/login'),
      body: {
        "email": emailController.value.text.toString(),
        "password": password.value.text.toString()
      });

      var data = jsonDecode(response.body);

      if(response.statusCode ==200){
        loading.value = false ;
        Get.snackbar('Login',  'login successfully');

      }else {
        loading.value = false ;
        Get.snackbar('Login',  data['error']);
      }
    }
    catch(e){
      loading.value = false ;
      Get.snackbar('Error', e.toString());
    }
  }
}