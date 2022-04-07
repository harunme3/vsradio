import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:radio/Music/music_detail_page.dart';
import 'package:radio/recording/recordinglist.dart';
import 'package:radio/search/searchdata.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  var l = Logger();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          // Container(
          //   child: ElevatedButton(
          //       onPressed: () {
          //         print('object');
          //         l.w('cliked');
          //         Navigator.push(
          //             context,
          //             MaterialPageRoute(
          //                 builder: (context) => MusicDetailPage()));
          //       },
          //       child: Text('data')),
          // ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: ElevatedButton(
                  onPressed: ()  {
                    print('object');
                               Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MusicDetailPage()));
                                  },
                  child: Text('newpage')),
            ),
          ),
        ],
      ),
    );
  }
}
