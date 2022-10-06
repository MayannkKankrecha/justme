import 'package:flutter/material.dart';
import 'package:justme/intropage/intro3.dart';
class intro2 extends StatefulWidget {
  const intro2({Key? key}) : super(key: key);

  @override
  State<intro2> createState() => _intro2State();
}

class _intro2State extends State<intro2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue,
        child: Center(
          child: Text("Screen 2"),
        ),
        )
      );
  }
}
