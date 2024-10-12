import 'package:finance_app/Screen/add.dart';
import 'package:finance_app/data/model/add_date.dart';
import 'package:finance_app/data/statistics.dart';
import 'package:finance_app/widgets/bottomnavigation.dart';
import 'package:finance_app/widgets/chart.dart';
import 'package:flutter/material.dart';
import 'package:finance_app/Screen/home.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';



void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(AdddataAdapter());
  await Hive.openBox<Add_data>('data');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Bottom(),
    );
  }
}
