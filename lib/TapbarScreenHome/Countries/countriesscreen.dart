import 'package:flutter/material.dart';
import 'package:radio/TapbarScreenHome/Countries/countrydata.dart';

class CountriesScreen extends StatefulWidget {
  const CountriesScreen({Key? key}) : super(key: key);

  @override
  State<CountriesScreen> createState() => _CountriesScreenState();
}

class _CountriesScreenState extends State<CountriesScreen> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Map<String, int>>(
        future: CountryData.gettotalstationcountrywise(), // async work
        builder:(BuildContext context, AsyncSnapshot<Map<String, int>> snapshot) {
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
                Map<String, int> data = snapshot.data!;
                return Container(
                  child: ListView.builder(itemBuilder: (context, index) {
                    return Container(child: Text(data[index].toString()));
                  }),
                );
              }
          }
        });
  }
}
