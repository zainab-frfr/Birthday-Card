import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class PageFive extends StatefulWidget {
  const PageFive({super.key});

  @override
  State<PageFive> createState() => _PageFiveState();
}

class _PageFiveState extends State<PageFive> {
  late VideoPlayerController _controller;

  late Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset('assets/videos/mama.mp4');

    _initializeVideoPlayerFuture = _controller.initialize();

    _controller.play();
    _controller.setLooping(true);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

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
            const Directionality(
              textDirection: TextDirection.rtl,
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  'ہمیشہ خوش رہیں',
                  style: TextStyle(
                      //fontFamily: 'cursive',
                      fontSize: 30,
                      color: Color.fromARGB(255, 165, 22, 70)),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.height * 0.3,
                child: FutureBuilder(
                    future: _initializeVideoPlayerFuture,
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.done) {
                        // If the VideoPlayerController has finished initialization, use
                        // the data it provides to limit the aspect ratio of the VideoPlayer.
                        return AspectRatio(
                          aspectRatio: _controller.value.aspectRatio,
                          // Use the VideoPlayer widget to display the video.
                          child: VideoPlayer(_controller),
                        );
                      } else {
                        // If the VideoPlayerController is still initializing, show a
                        // loading spinner.
                        return const Center(child: CircularProgressIndicator());
                      }
                    })),
            const SizedBox(
              height: 30,
            ),
            const Directionality(
              textDirection: TextDirection.rtl,
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  'ہمیشہ مسکراتے رہیں',
                  style: TextStyle(
                      fontSize: 30, color: Color.fromARGB(255, 165, 22, 70)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
