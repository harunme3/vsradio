import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class TagPlaylist extends StatefulWidget {
  const TagPlaylist({Key? key}) : super(key: key);

  @override
  State<TagPlaylist> createState() => _TagPlaylistState();
}

class _TagPlaylistState extends State<TagPlaylist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Container(
          height: 200,
          child: Lottie.asset('assets/lottie/radiotower.json'),
        ),
      ),
    );
  }
}
