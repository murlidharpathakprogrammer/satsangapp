import 'package:flutter/material.dart';

import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class myYouTubePlayer extends StatefulWidget {
  final String v;

  const myYouTubePlayer({
    Key? key,
    required this.v,
  }) : super(key: key);

  @override
  _myYouTubePlayerState createState() => _myYouTubePlayerState();
}

class _myYouTubePlayerState extends State<myYouTubePlayer> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();

    _controller = YoutubePlayerController(
      params: const YoutubePlayerParams(
        // autoPlay: false,
        enableJavaScript: false,
        loop: false,
        mute: false,
        playsInline: true,
        showControls: true,
        showFullscreenButton: true,
        showVideoAnnotations: false,
        strictRelatedVideos: true,
        enableCaption: false,
      ),
    );

    _controller.loadVideoById(videoId: widget.v);
    // _controller.cueVideoById(videoId: widget.v);
  }

  @override
  Widget build(BuildContext context) {
    return YoutubePlayerScaffold(
      controller: _controller,
      aspectRatio: 16 / 9,
      builder: (context, player) {
        return player;
      },
    );
  }
}
