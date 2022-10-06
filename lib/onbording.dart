import 'package:flutter/material.dart';
import 'package:justme/home.dart';
import 'package:justme/intropage/intro1.dart';
import 'package:justme/intropage/intro2.dart';
import 'package:justme/intropage/intro3.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
class Onbording extends StatefulWidget {
  const Onbording({Key? key}) : super(key: key);

  @override
  State<Onbording> createState() => _OnbordingState();
}

class _OnbordingState extends State<Onbording> {

  bool isLast = false;

  PageController _controller = PageController();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (int index) {
              setState(() {
                isLast = index == 2;
              });
            },
            children: [
              intro1(),
              intro2(),
              intro3(),
            ],
          ),
          Container(
            alignment: Alignment(0, 0.9),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    _controller.jumpTo(2);
                  },
                  child: Text("Skip"),
                ),
                SmoothPageIndicator(
                  controller: _controller,
                  effect: JumpingDotEffect(),
                  count: 3,
                ),
                isLast
                    ? GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                        },
                        child: Text("Get Started"),
                      )
                    : GestureDetector(
                        onTap: () {
                          _controller.nextPage(
                              duration: Duration(milliseconds: 100),
                              curve: Curves.easeIn);
                        },
                        child: Text("Next"),
                      ),
                // GestureDetector(
                //   onTap:(){
                //     _controller.jumpTo(2);
                //   },
                //   child: Text("Next"),
                // ),
              ],
            )
          ),
        ],
      ),
    );
  }
}
