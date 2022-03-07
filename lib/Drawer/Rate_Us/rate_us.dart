import 'package:flutter/material.dart';
import 'package:radio/App_review/app_review.dart';

class RateUs extends StatelessWidget {
  const RateUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Row(
        children: [
          Icon(
            Icons.star_border_outlined,
          ),
          SizedBox(
            width: 10,
          ),
          Text('rate_us', style: Theme.of(context).primaryTextTheme.bodyText1)
        ],
      ),
      onTap: () => AppReview.rateAndReviewApp(),
    );
  }
}
