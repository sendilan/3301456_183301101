import 'package:flutter/material.dart';
class NotePage extends StatelessWidget {
  const NotePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text('NOTLARIM'),
        centerTitle: true,
      ),
    );
  }
}
