import 'package:flutter/material.dart';

class Setting extends StatelessWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Row(
        children: [
          Icon(
            Icons.send_sharp,
          ),
          SizedBox(
            width: 10,
          ),
          Text('Setting', style: Theme.of(context).primaryTextTheme.bodyText1),
          SizedBox(
            width: 5,
          ),
          Container(
            padding: EdgeInsets.only(left: 4.0, right: 4.0),
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ],
      ),
      onTap: () async {},
    );
  }
}
