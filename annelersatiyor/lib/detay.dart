import 'package:flutter/material.dart';

class Detay extends StatefulWidget {
  const Detay({Key? key}) : super(key: key);

  @override
  _DetayState createState() => _DetayState();
}

class _DetayState extends State<Detay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text("Detay"),
      ),
    );
  }
}
