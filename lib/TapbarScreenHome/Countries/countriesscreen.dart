import 'package:flutter/material.dart';
import 'package:radio/Model/countrycountmodal.dart';
import 'package:radio/TapbarScreenHome/Countries/countrydata.dart';

class CountriesScreen extends StatefulWidget {
  const CountriesScreen({Key? key}) : super(key: key);

  @override
  State<CountriesScreen> createState() => _CountriesScreenState();
}

class _CountriesScreenState extends State<CountriesScreen> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<CountryinfoSet>(
        future: CountryData.loadJsonDataSet(), // async work
        builder:(BuildContext context, AsyncSnapshot<CountryinfoSet> snapshot) {
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
               var data = snapshot.data!;
                return ListView.builder(itemBuilder: (context, index) {
                  return Text(data.countryDataSet[index].countryname.toString());
                });
              }
          }
        });
  }
}
