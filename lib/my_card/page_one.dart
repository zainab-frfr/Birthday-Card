import 'package:flutter/material.dart';

class PageOne extends StatelessWidget {
  const PageOne({super.key});

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
                    const Text(
                      'Happy Birthday <3',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'cursive',
                          fontSize: 40,
                          color: Color.fromARGB(255, 165, 22, 70)),
                    ),
                    const SizedBox(height: 30,),
                    SizedBox( 
                      width: MediaQuery.of(context).size.width * 0.8,
                      height: MediaQuery.of(context).size.height * 0.3,
                      child: Image.asset('assets/images/solo.jpg')
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
