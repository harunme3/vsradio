import 'package:flutter/material.dart';

class AddRadioMenu extends StatelessWidget {
  const AddRadioMenu({Key? key}) : super(key: key);

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
          Text('Add radio staion',
              style: Theme.of(context).primaryTextTheme.bodyText1)
        ],
      ),
      onTap: () => {},
    );
  }
}
