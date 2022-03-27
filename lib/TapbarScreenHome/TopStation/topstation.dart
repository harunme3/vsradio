import 'package:flutter/material.dart';
import 'package:radio/Model/radiomodel.dart';
import 'package:radio/search/searchdata.dart';

class TopStationScreen extends StatefulWidget {
  const TopStationScreen({Key? key}) : super(key: key);

  @override
  State<TopStationScreen> createState() => _TopStationScreenState();
}

class _TopStationScreenState extends State<TopStationScreen> {
  @override
  Widget build(BuildContext context) {
    //according to maximum votes
    return FutureBuilder<List<RadioStationData>>(
        future: Searchdata.toplistenbyvotes(10, 'in'), // async work
        builder:(BuildContext context, AsyncSnapshot<List<RadioStationData>> snapshot) {
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
                List<RadioStationData> data = snapshot.data!;
                return Container(
                  child: ListView.builder(itemCount: data.length,itemBuilder: (context, index) {

                    return Container(child: Text(data[index].url));
                  }),
                );
              }
          }
        });
  }
}
