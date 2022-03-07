import 'package:flutter/material.dart';

class RecordingListMenu extends StatelessWidget {
  const RecordingListMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Row(
        children: [
          Icon(
            Icons.download_done_outlined,
          ),
          SizedBox(
            width: 10,
          ),
          Text('Recording list',
              style: Theme.of(context).primaryTextTheme.bodyText1)
        ],
      ),
      onTap: () => {},
    );
  }
}
