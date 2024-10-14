import 'package:flutter/material.dart';

class PageFour extends StatelessWidget {
  const PageFour({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.pink[50],
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.height * 0.3,
                child: Image.asset('assets/images/wauni.jpg')),
            const SizedBox(
              height: 20,
            ),
            const FittedBox(
              fit: BoxFit.scaleDown,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '...and',
                    style: TextStyle(
                        fontFamily: 'cursive',
                        fontSize: 30,
                        color: Color.fromARGB(255, 165, 22, 70)),
                  ),
                  Text(
                    ' the best',
                    style: TextStyle(
                        fontFamily: 'cursive',
                        fontSize: 30,
                        color: Color.fromARGB(255, 255, 66, 129)),
                  ),
                ],
              ),
            ),
            const FittedBox(
              fit: BoxFit.scaleDown,
              child: Row(
                children: [
                  Text(
                    'mama',
                    style: TextStyle(
                        fontFamily: 'cursive',
                        fontSize: 30,
                        color: Color.fromARGB(255, 255, 66, 129)),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.height * 0.3,
                child: Image.asset('assets/images/wme.jpg')),
          ],
        ),
      ),
    );
  }
}
