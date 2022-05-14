// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
class CustomIconButton extends StatelessWidget {
   CustomIconButton({Key? key,required this.iconData,required this.onPressed}) : super(key: key);
  IconData iconData;
  Function ?onPressed;

  @override
  Widget build(BuildContext context) {
    return  IconButton(onPressed:()=> onPressed, icon:  Icon(iconData,color: Colors.white,));
  }
}
