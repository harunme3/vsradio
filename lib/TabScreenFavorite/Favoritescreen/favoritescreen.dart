import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:radio/hive/boxs.dart';
import 'package:radio/hive/favoritehive.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({Key? key}) : super(key: key);

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ValueListenableBuilder<Box<FavoriteHive>>(
        valueListenable: HiveBoxs.getfavoritehivebox().listenable(),
        builder: (BuildContext context,Box<FavoriteHive> box,child){
           final recents = box.values.toList().cast<FavoriteHive>();
           //or  final recent=HiveBoxs.getfavoritehivebox().getAt(index);
          return buildlist(recents);
        },
      ),
    );
  }
   Widget buildlist(List<FavoriteHive> recents) {
    if(recents.isEmpty)
    {
       return Center(
        child: Text(
          'No expenses yet!',
          style: TextStyle(fontSize: 24),
        ),
      );

    }
    else{
     return  ListView.builder(
       itemCount: recents.length,
       itemBuilder:  (context, index) {
       
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              child: Text(recents[index].name),
            ),
             Container(
              child: Text(recents[index].countrycode),
            )
          ],
        );
     });
    }
  }
}
