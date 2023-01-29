

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/favourite_controller.dart';
import '../controllers/image_picker_controller.dart';

class ImagePickerScreen extends StatefulWidget {
  const ImagePickerScreen({Key? key}) : super(key: key);

  @override
  State<ImagePickerScreen> createState() => _ImagePickerScreenState();
}

class _ImagePickerScreenState extends State<ImagePickerScreen> {

  final controller = Get.put(ImagePickerController());


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Obx(() {
        return   Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: CircleAvatar(
                radius: 10,
                backgroundColor: Colors.grey,
                backgroundImage: controller.selectedImagePath.isNotEmpty
                    ? FileImage( File(controller.selectedImagePath.toString()))
                    : null,
              ),
            ),
            TextButton.icon(
              onPressed: (){
                controller.getImage();
              },
              icon: const Icon(Icons.image),
              label: const Text('Add Image'),
            ),
          ],
        );
      }),
    );
  }
}
