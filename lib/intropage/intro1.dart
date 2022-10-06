import 'package:flutter/material.dart';
class intro1 extends StatefulWidget {
  const intro1({Key? key}) : super(key: key);

  @override
  State<intro1> createState() => _intro1State();
}

class _intro1State extends State<intro1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.red,
        child: Center(
          child: Text("Screen 1"),
        ),
      ),
    );
  }
}
