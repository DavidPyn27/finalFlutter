import 'package:flutter/material.dart';
import 'package:tele_taxi/src/widgets/form_service.dart';
import 'package:tele_taxi/src/widgets/warning_widget_cubit.dart';

void main() => runApp(const Menu());

class Menu extends StatelessWidget {
  const Menu();
  static const String _title = 'Tele Taxi';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Inicio',
      style: optionStyle,
    ),
    FormService(),
    Text(
      'Iniciar sesión',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TeleTaxi'),
        backgroundColor: Colors.yellow.shade800,
        leading: Container(
          child: Image.asset("assets/images/logo.png"),
        ),
      ),
      body: Column(
        children: <Widget>[
          WarningWidgetCubit(),
          _widgetOptions.elementAt(_selectedIndex),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Inicio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.car_rental),
            label: 'Servicio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Iniciar sesión',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
