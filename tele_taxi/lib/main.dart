import 'package:flutter/material.dart';
import 'package:tele_taxi/src/navigation/routes.dart';
import 'package:tele_taxi/src/utils/check_internet_connection.dart';

final internetChecker = CheckInternetConnection();
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'TeleTaxi',
      debugShowCheckedModeBanner: false,
      onGenerateRoute: Routes.routes,
    );
  }
}