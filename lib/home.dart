import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Container(
         padding: const EdgeInsets.only(top: 50,left: 20,right: 20),
         child: Column(
           children: [
              TextField(
               decoration: InputDecoration(
                 hintText: "Email"
               ),
             ),
             TextField(
               decoration: InputDecoration(
                   hintText: "Password",
               ),
             ),
             TextField(
               decoration: InputDecoration(
                   hintText: "Confirm Password"
               ),
             ),
             ElevatedButton(onPressed: (){}, child: Text("login"))
           ],
         ),
         ),
    );
  }
}

