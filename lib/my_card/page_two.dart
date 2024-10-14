import 'package:flutter/material.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

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
            FittedBox(
                fit: BoxFit.scaleDown,
                child: Column(
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'to the ',
                          style: TextStyle(
                              fontFamily: 'cursive',
                              fontSize: 30,
                              color: Color.fromARGB(255, 165, 22, 70)),
                        ),
                        Text(
                          'chottoo ',
                          style: TextStyle(
                              fontFamily: 'cursive',
                              fontSize: 30,
                              color: Color.fromARGB(255, 255, 66, 129)),
                        ),
                        Text(
                          'of our house hehe',
                          style: TextStyle(
                              fontFamily: 'cursive',
                              fontSize: 30,
                              color: Color.fromARGB(255, 165, 22, 70)),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                        width: MediaQuery.of(context).size.width * 0.8,
                        height: MediaQuery.of(context).size.height * 0.3,
                        child: Image.asset('assets/images/chotoo.jpg')),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
