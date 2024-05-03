import 'package:flutter/material.dart';
import 'package:chewie/chewie.dart';
import 'package:video_player/video_player.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  late ChewieController _chewie;
  late VideoPlayerController _video;
  late YoutubePlayerController _youtube;
  @override
  void initState() {
    // TODO: implement initState
    _video = VideoPlayerController.networkUrl(Uri.parse(
        "https://cdn.pixabay.com/video/2015/08/10/209-135852365_large.mp4"));

    _chewie = ChewieController(
        videoPlayerController: _video, autoPlay: true, looping: true);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _video.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 250,
        width: MediaQuery.of(context).size.width,
        child: SizedBox(
          width: _video.value.size.width,
          child: Chewie(
            controller: _chewie,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            if (_video.value.isPlaying) {
              _video.pause();
            } else {
              _video.play();
            }
          });
        },
        child: Icon(Icons.play_arrow),
      ),
    );
  }
}
