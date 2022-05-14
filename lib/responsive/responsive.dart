import 'package:flutter/material.dart';
import 'package:whats_app_clone/screens/mobile_screen.dart';
import 'package:whats_app_clone/screens/web_screen.dart';
class Responsive extends StatelessWidget {
  const Responsive({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //using LayoutBuilder علشان اجيب القياس بتاع الشاشه
    return LayoutBuilder(builder: (context,constrains){
      //constrains contains of some information such as  max height,max width
      if(constrains.maxWidth>600){
        return const Web();
      }else {
        return const Mobile();
      }
    });
  }
}
