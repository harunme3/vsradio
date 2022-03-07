import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

class ShareApp extends StatelessWidget {
  const ShareApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Row(
        children: [
          Icon(
            Icons.share_outlined,
          ),
          SizedBox(
            width: 10,
          ),
          Text('share_app', style: Theme.of(context).primaryTextTheme.bodyText1)
        ],
      ),
      onTap: () => {
        Share.share(
            'https://play.google.com/store/apps/details?id=com.vs.ncertclass10th',
            subject: "For NCERT Solution install this App from Play store")
      },
    );
  }
}
