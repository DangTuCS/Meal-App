import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:meal_app/screens/categories_screen.dart';
import 'package:meal_app/screens/category_meals_screen.dart';
import 'package:meal_app/screens/filter_screen.dart';
import 'package:meal_app/screens/meal_detail_screen.dart';
import 'package:meal_app/screens/tabs_screen.dart';

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
      routes: {
        '/': (ctx) => const TabsScreen(),
        CategoryMealsScreen.routeName: (ctx) => CategoryMealsScreen(),
        MealDetailScreen.routeName: (ctx) => MealDetailScreen(),
        FilterScreen.routeName: (ctx) => FilterScreen(),
      },
    );
  }
}

