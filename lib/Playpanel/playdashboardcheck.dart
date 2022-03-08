// ignore_for_file: prefer_const_literals_to_create_immutables

import 'dart:html';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class PlayDashBoardCheck extends StatefulWidget {
  const PlayDashBoardCheck({Key? key}) : super(key: key);

  @override
  State<PlayDashBoardCheck> createState() => _PlayDashBoardCheckState();
}

class _PlayDashBoardCheckState extends State<PlayDashBoardCheck> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(Icons.more),
            onPressed: () {},
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //ads
          //animation
          Lottie.asset(
            'assets/LottieLogo1.json',
          ),
          Container(
            child: AutoSizeText('tere gam agar na hota to sharab'),
          ),
          //features
          Row(
            children: [
              Container(
                child: Column(
                  children: [
                    Icon(Icons.volume_up_outlined),
                    Text('Volume'),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Icon(Icons.alarm_outlined),
                    Text('Alarm'),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Icon(Icons.timer_outlined),
                    Text('Timer'),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Icon(Icons.settings_voice_outlined),
                    Text('Record'),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Icon(Icons.favorite_border_outlined),
                    Text('Favorite'),
                  ],
                ),
              ),
            ],
          ),
          //Play pause
          Row(
            children: [
              Container(
                child: Icon(Icons.skip_previous_outlined),
              ),
              Container(
                child: Icon(Icons.play_circle_outlined),
              ),
              Container(
                child: Icon(Icons.skip_next_outlined),
              ),
            ],
          )
        ],
      ),
    );
  }
}
