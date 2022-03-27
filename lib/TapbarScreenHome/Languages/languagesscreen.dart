import 'package:flutter/material.dart';
import 'package:radio/TapbarScreenHome/Languages/languagedata.dart';

class LanguageScreen extends StatefulWidget {
  const LanguageScreen({Key? key}) : super(key: key);

  @override
  State<LanguageScreen> createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Map<String, int>>(
        future: LanguageData.gettotalstationlanguagewise(), // async work
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
                  child: ListView.builder(itemCount: data.length,itemBuilder: (context, index) {

                    return Container(child: Text(data[index].toString()));
                  }),
                );
              }
          }
        });
  }
}
