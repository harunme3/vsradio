import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:radio/config/constants.dart';


Widget playingNavigation(BuildContext context) {
  return Container(
    height: kSpacingUnit * 7,
    decoration: BoxDecoration(
      border: Border(
        top: BorderSide(
          color: Color(0xFF4D5559),
          width: 1,
        ),
        bottom: BorderSide(
          color: kBlackColor,
          width: 1,
        ),
      ),
    ),
    child: Row(
      children: [
        Image.asset(
          'assets/Image/sleep.jpg',
          height: kSpacingUnit * 7,
          width: kSpacingUnit * 7,
        ),
        SizedBox(width: 10),
        Text(
         ' currentSong.title',
          style: kCaptionTextStyle.copyWith(
            fontWeight: FontWeight.bold,
            color: kTextColor,
          ),
        ),
        SizedBox(width: kSpacingUnit * 0.5),
        SvgPicture.asset(
          'assets/icons/dot.svg',
          height: 3,
          width: 3,
        ),
        SizedBox(width: kSpacingUnit * 0.5),
        Text(
         ' kk',
          style: kCaptionTextStyle,
        ),
        const Spacer(),
        SvgPicture.asset(
          'assets/icons/heart.svg',
          height: 20,
          width: 24,
        ),
        SizedBox(width: kSpacingUnit * 2),
        SvgPicture.asset(
          'assets/icons/play.svg',
          height: 24,
          width: 24,
        ),
        SizedBox(width: kSpacingUnit * 2),
      ],
    ),
  );
}
