import 'dart:math';

import 'package:icontesting/my_card/card.dart';
import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';

class MyConfetti extends StatefulWidget {
  const MyConfetti({super.key});

  @override
  State<MyConfetti> createState() => _MyConfettiState();
}

class _MyConfettiState extends State<MyConfetti> {
  late ConfettiController _controller;

  @override
  void initState() {
    super.initState();
    _controller = ConfettiController( duration: const Duration(seconds: 3), );
    _controller.play();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
            MyCard(),
            Align(
              alignment: Alignment.topRight,
              child: ConfettiWidget(
                confettiController: _controller,
                blastDirection: pi, 
                particleDrag: 0.05,
                maxBlastForce: 10, 
                minBlastForce: 2, 
                emissionFrequency: 0.3,
                numberOfParticles: 15, 
                gravity: 0.5,
                colors: const [
                  Colors.pink,
                  Color.fromARGB(255, 254, 108, 157),
                  Color.fromARGB(255, 255, 180, 205)
                ],
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: ConfettiWidget(
                confettiController: _controller,
                blastDirection: 0, 
                particleDrag: 0.05,
                maxBlastForce: 10, 
                minBlastForce: 2, 
                emissionFrequency: 0.3,
                numberOfParticles: 15, 
                gravity: 0.5,
                colors: const [
                  Colors.pink,
                  Color.fromARGB(255, 254, 108, 157),
                  Color.fromARGB(255, 255, 180, 205)
                ],
              ),
            )

          ],
        )
      );
  }
}