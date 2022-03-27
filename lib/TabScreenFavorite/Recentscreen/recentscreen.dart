import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:radio/hive/boxs.dart';
import 'package:radio/hive/recenthive.dart';

class RecentScreen extends StatefulWidget {
  const RecentScreen({Key? key}) : super(key: key);

  @override
  State<RecentScreen> createState() => _RecentScreenState();
}

class _RecentScreenState extends State<RecentScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ValueListenableBuilder<Box<RecentHive>>(
        valueListenable: HiveBoxs.getrecenthivebox().listenable(),
        builder: (BuildContext context,Box<RecentHive> box,child){
           final recents = box.values.toList().cast<RecentHive>();
           //or  final recent=HiveBoxs.getrecenthivebox().getAt(index);
          return buildlist(recents);
        },
      ),
    );
  }

  Widget buildlist(List<RecentHive> recents) {
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
