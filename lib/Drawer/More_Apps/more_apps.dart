import 'package:flutter/material.dart';
import 'package:radio/launcher_config/launcher.dart';

class MoreApps extends StatelessWidget {
  const MoreApps({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Row(
        children: [
          Icon(
            Icons.more_outlined,
          ),
          SizedBox(
            width: 10,
          ),
          Text('more_app', style: Theme.of(context).primaryTextTheme.bodyText1),
          SizedBox(
            width: 5,
          ),

//Uncomment on when adbmob is implemented

          Container(
            padding: EdgeInsets.only(left: 4.0, right: 4.0),
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              'Ad',
              style: TextStyle(fontSize: 8.0),
            ),
          ),
        ],
      ),
      onTap: () => {
        Utils.openLink(
            url:
                'https://play.google.com/store/apps/developer?id=Virtual+Study:Books+and+Solutions+in+Hindi,English')
      },
    );
  }
}
