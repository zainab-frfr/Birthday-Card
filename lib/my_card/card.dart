import 'package:icontesting/my_card/last_page.dart';
import 'package:icontesting/my_card/page_five.dart';
import 'package:icontesting/my_card/page_four.dart';
import 'package:icontesting/my_card/page_one.dart';
import 'package:icontesting/my_card/page_three.dart';
import 'package:icontesting/my_card/page_two.dart';
import 'package:flutter/material.dart';
import 'package:page_flip/page_flip.dart';

class MyCard extends StatelessWidget {
  MyCard({super.key});

  final GlobalKey<PageFlipWidgetState> _controller = GlobalKey<PageFlipWidgetState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageFlipWidget(
        key: _controller,
        isRightSwipe: false,
        //lastPage: const ,
        children: const [
          PageOne(),
          PageTwo(),
          PageThree(),
          PageFour(),
          PageFive(),
          LastPage()
        ]
      ),
    );
  }
}