import 'package:flutter/material.dart';

class LastPage extends StatelessWidget {
  const LastPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.pink[50],
      child: const Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            FittedBox(
                fit: BoxFit.scaleDown,
                child: Column(
                  children: [
                    FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(
                        'Love you always',
                        style: TextStyle(
                            fontFamily: 'cursive',
                            fontSize: 30,
                            color: Color.fromARGB(255, 165, 22, 70)),
                      ),
                    ),
                    FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(
                        '- zainoo, auni, & appa',
                        style: TextStyle(
                            fontFamily: 'cursive',
                            fontSize: 20,
                            color: Color.fromARGB(255, 165, 22, 70)),
                      ),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
