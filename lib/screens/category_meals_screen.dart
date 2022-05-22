import 'package:flutter/material.dart';
import 'package:meal_app/widgets/meal_item.dart';

import '../models/meal.dart';

class CategoryMealsScreen extends StatefulWidget {
  // const CategoryMealsScreen({
  //   Key? key,
  //   required this.categoryID,
  //   required this.categoryTitle,
  // }) : super(key: key);
  //
  // final String categoryID;
  // final String categoryTitle;
  static const routeName = '/categories-meals';
  final List<Meal> availableMeal;

  CategoryMealsScreen(this.availableMeal);

  @override
  State<CategoryMealsScreen> createState() => _CategoryMealsScreenState();
}

class _CategoryMealsScreenState extends State<CategoryMealsScreen> {
  late String? categoryTitle;
  late List<Meal> displayMeals;
  bool _loadedInitData = false;

  @override
  void didChangeDependencies() {
    if (_loadedInitData == false){
      final routeArgs =
      ModalRoute.of(context)?.settings.arguments as Map<String, String>;
      categoryTitle = routeArgs['title'];

      final categoryId = routeArgs['id'];
      displayMeals = widget.availableMeal.where((meal) {
        return meal.categories.contains(categoryId);
      }).toList();
      _loadedInitData = true;
    }
    super.didChangeDependencies();
  }

  void _removeMeal(String mealID)  {
    setState(() {
      displayMeals.removeWhere((element) => element.id == mealID);
    });
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(
          categoryTitle!,
        ),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return MealItem(
            id: displayMeals[index].id,
            title: displayMeals[index].title,
            imageUrl: displayMeals[index].imageUrl,
            duration: displayMeals[index].duration,
            complexity: displayMeals[index].complexity,
            affordability: displayMeals[index].affordability,
            removeItem: _removeMeal,
          );
        },
        itemCount: displayMeals.length,
      ),
    );
  }
}
