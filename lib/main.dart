import 'package:flutter/material.dart';
import 'components/constants.dart';
import './screens/data_input_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: DataInputScreen.pageRoute,
      routes: {
        DataInputScreen.pageRoute: (context) => DataInputScreen(),
      },
      theme: ThemeData(
        primaryColor: Colors.white,
        accentColor: Colors.purpleAccent,
        appBarTheme: appBarTheme,
      ),
    );
  }
}
