import 'package:flutter/material.dart';
import 'package:radio/Drawer/Addradiomenu/addradiomenu.dart';
import 'package:radio/Drawer/AlarmMenu/alarmmenu.dart';
import 'package:radio/Drawer/App_Name/app_name.dart';
import 'package:radio/Drawer/Carmodemenu/carmodemenu.dart';
import 'package:radio/Drawer/More_Apps/more_apps.dart';
import 'package:radio/Drawer/Rate_Us/rate_us.dart';
import 'package:radio/Drawer/Recordinglistmenu/recordinglistmenu.dart';
import 'package:radio/Drawer/Setting/setting.dart';
import 'package:radio/Drawer/Share_App/share_app.dart';
import 'package:radio/Drawer/Timermenu/timermenu.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.only(
          top: size.height / 25,
          bottom: size.height / 25,
          left: size.height / 100),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AppName(),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(
                  vertical: size.height / 8, horizontal: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  CarModeMenu(),
                  RecordingListMenu(),
                  AlarmMenu(),
                  TimerMenu(),
                  AddRadioMenu(),
                  MoreApps(),
                  Setting(),
                  ShareApp(),
                  RateUs(),
                ],
              ),
            ),
          ),
          Row(
            children: [
              Icon(
                Icons.lock_outlined,
              ),
              SizedBox(
                width: 10,
              ),
              GestureDetector(
                  onTap: () {},
                  child: Text('privacy_policy',
                      style: Theme.of(context).primaryTextTheme.bodyText1)),
            ],
          )
        ],
      ),
    );
  }
}
