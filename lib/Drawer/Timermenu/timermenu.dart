import 'package:flutter/material.dart';

class TimerMenu extends StatelessWidget {
  const TimerMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Row(
        children: [
          Icon(
            Icons.notifications_active_outlined,
          ),
          SizedBox(
            width: 10,
          ),
          Text('Timer', style: Theme.of(context).primaryTextTheme.bodyText1)
        ],
      ),
      onTap: () => {},
    );
  }
}
