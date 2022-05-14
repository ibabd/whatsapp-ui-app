// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
class PersonImage extends StatelessWidget {
  PersonImage({Key? key,required this.imageUrl,required this.width,required this.height}) : super(key: key);
  late String imageUrl;
  late double height;
  late double width;

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: imageUrl,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          image: DecorationImage(
            image: NetworkImage(
              imageUrl,
              // randomInfo[index]['image'].toString(),
            ),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
