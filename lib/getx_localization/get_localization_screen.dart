

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';

class GetXLocalizationScreen extends StatefulWidget {
  const GetXLocalizationScreen({Key? key}) : super(key: key);

  @override
  State<GetXLocalizationScreen> createState() => _GetXLocalizationScreenState();
}

class _GetXLocalizationScreenState extends State<GetXLocalizationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Getx Localization')
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ListTile(
            title: Text(
              'message'.tr,
              style: Theme.of(context).textTheme.headline4,
            ),
            subtitle: Text(
              'name'.tr,
              style: Theme.of(context).textTheme.headline4,
            ),
          ),

         SizedBox(height: 40,),
         Row(
           mainAxisAlignment: MainAxisAlignment.center,
           crossAxisAlignment: CrossAxisAlignment.center,
           children: [
             OutlinedButton(
               onPressed: () => Get.updateLocale(const Locale('en', 'US')),
               child: const Text('English'),
             ),
             SizedBox(width: 40,),
             OutlinedButton(
               onPressed: () => Get.updateLocale(const Locale('ur', 'PK')),
               child: const Text('Urdu'),
             ),

           ],
         )
        ],
      ),
    );
  }
}
