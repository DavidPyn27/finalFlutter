import 'package:flutter/material.dart';
import 'package:tele_taxi/src/utils/check_internet_connection.dart';

final internetChecker = CheckInternetConnection();
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Container(
            child: Text('Hello'),
          ),
        ),
      ),
    );
  }
}