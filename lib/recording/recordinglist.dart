

import 'package:flutter/material.dart';

class RecordingList extends StatefulWidget {
  const RecordingList({ Key? key }) : super(key: key);

  @override
  State<RecordingList> createState() => _RecordingListState();
}

class _RecordingListState extends State<RecordingList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(onPressed: (){
              print('object');
            }, child: Text('searchbytag')),

            GestureDetector(
              onTap: (){print('object');},
              child: Text('data'),
            )
          ],
        ),
      ),
    );
  }
}