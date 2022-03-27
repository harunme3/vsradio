import 'package:flutter/material.dart';
import 'package:radio/Model/radiomodel.dart';
import 'package:radio/config/appcolor.dart';
import 'package:radio/search/searchdata.dart';

class RecentPlayed extends StatelessWidget {
  final RadioData? radioData;

  const RecentPlayed({Key? key, this.radioData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double categoryHeight =
        MediaQuery.of(context).size.height * 0.30 - 50;
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: Row(
          children: <Widget>[
            GestureDetector(
              onTap: (() async{
                l.w('cliked');
              final searched= await Searchdata.serchbytag('Bollywood');
              l.e(searched);
              }),
              child:  Column(
                          children: [
                            Container(
                              width: 180,
                              height: 180,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(radioData!.radioDataSet[0].favicon),
                                      fit: BoxFit.cover),
                                  color: AppColor.first_color,
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              radioData!.radioDataSet[0].name,
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600),
                            ),
                           
                          ],
                        ),
                    
            ),
            Container(
              width: 150,
              margin: EdgeInsets.only(right: 20),
              height: categoryHeight,
              decoration: BoxDecoration(
                  color: Colors.blue.shade400,
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const <Widget>[
                      Text(
                        "Newest",
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "20 Items",
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              width: 150,
              margin: EdgeInsets.only(right: 20),
              height: categoryHeight,
              decoration: BoxDecoration(
                  color: Colors.lightBlueAccent.shade400,
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      radioData?.radioDataSet[0].name ?? 'Basket',
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "20 Items",
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
