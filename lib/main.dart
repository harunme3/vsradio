import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart' as path_provider;
import 'package:provider/provider.dart';
import 'package:radio/Providers/countryprovider.dart';
import 'package:radio/Providers/languageprovider.dart';
import 'package:radio/Providers/themeprovider.dart';
import 'package:radio/hive/favoritehive.dart';
import 'package:radio/hive/recenthive.dart';
import 'package:radio/splashscreen/splashscreen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final appDocumentDirectory =
      await path_provider.getApplicationDocumentsDirectory();
  Hive.init(appDocumentDirectory.path);
  //open Hivebox
  //primitive type
final themedb=await Hive.openBox<String>('theme');
final countrydb=await Hive.openBox<String>('countrycode');     
final languagedb=await Hive.openBox<String>('languagecode');
//custom adopter
final recentdb=await Hive.openBox<RecentHive>('recent');
final favoritedb=await Hive.openBox<RecentHive>('favorite');
   Hive.registerAdapter(RecentHiveAdapter());
   Hive.registerAdapter(FavoriteHiveAdapter());

  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<CountryProvider>(
            create: (context) => CountryProvider(countrydb.get('countrycode')??'in')),
             ChangeNotifierProvider<LanguageProvider>(
            create: (context) => LanguageProvider(languagedb.get('languagecode')??'hi')),
             ChangeNotifierProvider<ThemeProvider>(
            create: (context) => ThemeProvider(themedb.get('theme')??'light')),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
@override
void dispose() {
  Hive.close();
  super.dispose();
}
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Consumer3<CountryProvider,LanguageProvider,ThemeProvider>(builder: (
      context,
      stationProvider,
      languageProvider,
      themeProvider,
      child,
    ) {
      return MaterialApp(
          debugShowCheckedModeBanner: false, home: SplashScreen());
    });
  }
}
