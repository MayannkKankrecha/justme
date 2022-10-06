import 'package:flutter/material.dart';
class intro3 extends StatefulWidget {
  const intro3({Key? key}) : super(key: key);

  @override
  State<intro3> createState() => _intro3State();
}

class _intro3State extends State<intro3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.yellow,
        child: Center(
          child: Text("Screen 3"),
        ),
      ),
    );
  }
}