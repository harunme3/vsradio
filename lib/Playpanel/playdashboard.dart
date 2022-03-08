import 'package:flutter/material.dart';

class PlayDashBoard extends StatefulWidget {
  const PlayDashBoard({Key? key}) : super(key: key);

  @override
  State<PlayDashBoard> createState() => _PlayDashBoardState();
}

class _PlayDashBoardState extends State<PlayDashBoard> {

    final FlutterRadioPlayer _flutterRadioPlayer = FlutterRadioPlayer();

      Future<void> initRadioService() async {
    try {
      await _flutterRadioPlayer.init(
        "Flutter Radio Example",
        "Live",
        "http://209.133.216.3:7018/stream?type=http&nocache=1906",
        "false",
      );
    } on PlatformException {
      print("Exception occurred while trying to register the services.");
    }
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child:
    );
  }
}
