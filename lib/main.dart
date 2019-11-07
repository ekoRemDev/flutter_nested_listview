import 'package:flutter/material.dart';

import 'homepage.dart';
import 'homepage2.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nested listviews',
      theme: ThemeData(
        primarySwatch: Colors.green
      ),
      home: MyHomePage2(title :"Flutter nested Listview"),
    );
  }
}



/*
https://www.youtube.com/watch?v=1LGKZsff8bQ
 */
