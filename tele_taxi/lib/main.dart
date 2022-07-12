import 'package:flutter/material.dart';
import 'package:tele_taxi/src/utils/check_internet_connection.dart';
import 'package:tele_taxi/src/widgets/warning_widget_cubit.dart';

final internetChecker = CheckInternetConnection();
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Center(
          child: Container(
            child: Text('Hello World'),
          ),
        ),
      ),
    );
  }
}