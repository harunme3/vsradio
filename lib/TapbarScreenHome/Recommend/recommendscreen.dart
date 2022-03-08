import 'dart:convert';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/services.dart';

import 'package:logger/logger.dart';
import 'package:flutter/material.dart';

import 'package:radio/Model/radiomodel.dart';
import 'package:provider/provider.dart';
import 'package:radio/Playpanel/playdashboard.dart';
import 'package:radio/Provider/stationprovider.dart';
import 'package:radio/TapbarScreenHome/Recommend/Recentplayed/recentplayed.dart';

class RecommendScreen extends StatefulWidget {
  const RecommendScreen({Key? key}) : super(key: key);

  @override
  State<RecommendScreen> createState() => _RecommendScreenState();
}

class _RecommendScreenState extends State<RecommendScreen> {
  var l = Logger();

  Future<RadioData> loaddata(String countryCode) async {
    String jsonstring = await rootBundle
        .loadString('assets/countrywisestation/stations_$countryCode.json');
    final jsonresponse = json.decode(jsonstring);

    return RadioData.fromJson(jsonresponse);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<RadioData>(
      future: Provider.of<StationProvider>(context)
          .loadJsonDataSet('in'), // async work
      builder: (BuildContext context, AsyncSnapshot<RadioData> snapshot) {
        switch (snapshot.connectionState) {
          case ConnectionState.waiting:
            return SafeArea(
              child: Scaffold(
                body: Center(child: CircularProgressIndicator()),
              ),
            );
          default:
            if (snapshot.hasError) {
              return Text('Error: ${snapshot.error}');
            } else {
              RadioData data = snapshot.data!;
              return MaterialApp(
                home: Scaffold(
                  body: Container(
                    child: Column(
                      children: [
                        RecentPlayed(radioData: data),
                        Divider(
                          color: Colors.redAccent,
                          height: 20,
                        ),
                        Expanded(
                          child: ListView.builder(
                              itemCount: snapshot.data!.radioDataSet.length,
                              itemBuilder: (BuildContext context, int index) =>
                                  Container(
                                    child: Row(
                                      children: [
                                        GestureDetector(
                                          onTap: () async {
                                            RadioData radioData =
                                                await loaddata('in');
                                            //  l.e(radioData);
                                          },
                                          child: Container(
                                            height: 100,
                                            width: 100,
                                            child: Image.network(data
                                                .radioDataSet[index].favicon),
                                          ),
                                        ),
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              AutoSizeText(
                                                data.radioDataSet[index].name,
                                                maxLines: 1,
                                              ),
                                              AutoSizeText(
                                                data.radioDataSet[index].tags,
                                                maxLines: 1,
                                              ),
                                              AutoSizeText(
                                                data.radioDataSet[index]
                                                    .language,
                                                maxLines: 1,
                                              ),
                                            ],
                                          ),
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            l.e(data.radioDataSet[index].url);
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        PlayDashBoard(
                                                          url: data
                                                              .radioDataSet[
                                                                  index]
                                                              .url,
                                                          favicon: data
                                                              .radioDataSet[
                                                                  index]
                                                              .favicon,
                                                        )));
                                          },
                                          child: Icon(Icons.play_arrow),
                                        ),
                                      ],
                                    ),
                                  )),
                        )
                      ],
                    ),
                  ),
                ),
              );
            }
        }
      },
    );
  }
}
