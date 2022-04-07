import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:radio/Model/langcountmodal.dart';
import 'package:radio/TapbarScreenHome/Languages/languagedata.dart';

class LanguageScreen extends StatefulWidget {
  const LanguageScreen({Key? key}) : super(key: key);

  @override
  State<LanguageScreen> createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
  var l=Logger();
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<LanginfoSet>(
        future: LanguageData.loadJsonDataSet(), // async work
        builder: (BuildContext context, AsyncSnapshot<LanginfoSet> snapshot) {
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
                return ListView.builder(
                    itemCount: data.langDataSet.length,
                    itemBuilder: (context, index) {
                      return ElevatedButton(
                        onPressed: (){
l.e('message');
                        },
                        child: Text(
                            data.langDataSet[index].languagename.toString()),
                      );
                    });
              }
          }
        });
  }
}
