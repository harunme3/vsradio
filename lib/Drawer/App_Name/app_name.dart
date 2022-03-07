import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:radio/config/appcolor.dart';

class AppName extends StatelessWidget {
  const AppName({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          child: SvgPicture.asset('assets/header/drawerheader.svg'),
          backgroundColor: AppColor.first_color,
        ),
        SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('app_name1',
                style: Theme.of(context).primaryTextTheme.bodyText1),
            Text('app_name2',
                style: Theme.of(context).primaryTextTheme.bodyText1),
            Text('class', style: Theme.of(context).primaryTextTheme.bodyText1)
          ],
        )
      ],
    );
  }
}
