import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class MyYoutube extends StatefulWidget {
  const MyYoutube({super.key});

  @override
  State<MyYoutube> createState() => _MyYoutubeState();
}

class _MyYoutubeState extends State<MyYoutube> {
  @override
  String? videoid = YoutubePlayer.convertUrlToId(
      "https://www.youtube.com/watch?v=ApXoWvfEYVU");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YoutubePlayer(
        controller: YoutubePlayerController(
            initialVideoId: videoid!,
            flags: YoutubePlayerFlags(autoPlay: true, mute: false)),
      ),
    );
  }
}
