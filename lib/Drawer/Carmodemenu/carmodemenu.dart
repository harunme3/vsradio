import 'package:flutter/material.dart';

class CarModeMenu extends StatelessWidget {
  const CarModeMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Row(
        children: [
          Icon(
            Icons.mail_outline_outlined,
          ),
          SizedBox(
            width: 10,
          ),
          Text('Car Mode', style: Theme.of(context).primaryTextTheme.bodyText1)
        ],
      ),
      onTap: () => {},
    );
  }
}
