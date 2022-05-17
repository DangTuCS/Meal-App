import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:meal_app/categories_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeliMeals',
      theme: ThemeData(
        canvasColor: const Color.fromRGBO(255, 254, 229, 1),
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.pink)
            .copyWith(secondary: Colors.amber),
        // fontFamily: 'Raleway',
        textTheme: ThemeData
            .light()
            .textTheme
            .copyWith(
          bodyText2: const TextStyle(
              color: Color.fromRGBO(20, 51, 51, 1)
          ),
          bodyText1: const TextStyle(
              color: Color.fromRGBO(20, 51, 51, 1)
          ),
          headline6: const TextStyle(
              fontSize: 24,
              fontFamily: 'RobotoCondensed',
          ),
        ),
      ),
      home: const CategoriesScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DeliMeals'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
          ],
        ),
      ),
    );
  }
}
