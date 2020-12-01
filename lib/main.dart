import 'package:flutter/material.dart';
import 'components/constants.dart';
import './screens/input_screen.dart';
import './screens/output_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: InputScreen.pageRoute,
      routes: {
        InputScreen.pageRoute: (context) => InputScreen(),
        OutputScreen.pageRoute: (context) => OutputScreen(),
      },
      theme: ThemeData(
        primaryColor: Colors.white,
        accentColor: Colors.purpleAccent,
        appBarTheme: kAppBarTheme,
      ),
    );
  }
}
