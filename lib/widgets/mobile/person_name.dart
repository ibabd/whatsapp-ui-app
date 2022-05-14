// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:whats_app_clone/theme/dark_mode.dart';

class PersonName extends StatelessWidget {
   PersonName({Key? key,required this.personName}) : super(key: key);
   late String personName;
  @override
  Widget build(BuildContext context) {
    return Text(
     personName,
      style: textStyle,
      overflow: TextOverflow.ellipsis,
    );
  }
}
