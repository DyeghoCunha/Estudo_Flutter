import 'package:flutter/material.dart';
import 'package:section_8_flutter_dart_multiscreen_navigation_meals_app/data/dummy_data.dart';
import 'package:section_8_flutter_dart_multiscreen_navigation_meals_app/models/category.dart';
import 'package:section_8_flutter_dart_multiscreen_navigation_meals_app/models/meal.dart';
import 'package:section_8_flutter_dart_multiscreen_navigation_meals_app/screens/meals.dart';
import 'package:section_8_flutter_dart_multiscreen_navigation_meals_app/widgets/category_grid_item.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key,  required this.availableMeals});

   final List<Meal> availableMeals;


  void _selectCategory(BuildContext context, Category category) {
    final filteredMeals = availableMeals.where((meal) => meal.categories.contains
    (category.id)).toList();


    Navigator.push(context,
      MaterialPageRoute(
        builder: (ctx) => MealsScreen(
          title: category.title,
          meals: filteredMeals,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return
      GridView(
        padding: const EdgeInsets.all(24),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20),
        children: [
          //availableCategories.map((category)=> CategoryGridItem(category:
          // category))
          for (final category in availableCategories)
            CategoryGridItem(
              onSelectCategory:(){ _selectCategory(context, category);},
              category: category,
            ),
        ],
      );

  }
}
