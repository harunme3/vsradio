import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:radio/Provider/stationprovider.dart';
import 'package:radio/splashscreen/splashscreen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(
    MultiProvider(
      providers: [
        Provider<StationProvider>(create: (_) => StationProvider('bo')),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Consumer<StationProvider>(builder: (
      context,
      stationProvider,
      child,
    ) {
      return MaterialApp(
          debugShowCheckedModeBanner: false, home: SplashScreen());
    });
  }
}
