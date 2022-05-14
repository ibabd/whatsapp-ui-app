import 'package:flutter/material.dart';
class Web extends StatefulWidget {
  const Web({Key? key}) : super(key: key);

  @override
  _WebState createState() => _WebState();
}

class _WebState extends State<Web> {
  @override
  Widget build(BuildContext context) {
    return const Center(child: Text("welcome from Web",style: TextStyle(fontSize: 40),),);
  }
}
