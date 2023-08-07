import 'package:flutter/material.dart';
import 'package:section_8_flutter_dart_multiscreen_navigation_meals_app/data/dummy_data.dart';
import 'package:section_8_flutter_dart_multiscreen_navigation_meals_app/models/meal.dart';
import 'package:section_8_flutter_dart_multiscreen_navigation_meals_app/screens/categories.dart';
import 'package:section_8_flutter_dart_multiscreen_navigation_meals_app/screens/filters.dart';
import 'package:section_8_flutter_dart_multiscreen_navigation_meals_app/screens/meals.dart';
import 'package:section_8_flutter_dart_multiscreen_navigation_meals_app/widgets/main_drawer.dart';

const kInitialFilters = {
  Filter.glutenFree:false,
  Filter.lactoseFree:false,
  Filter.vegetarian:false,
  Filter.vegan:false,
};



class TabScreen extends StatefulWidget {
  const TabScreen({super.key});

  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  int _selectedPageIndex = 0;
  Map<Filter,bool> _selectedFilters = kInitialFilters;
  final List<Meal> _favoriteMeals = [];

  void _showInfoMessage(String message) {
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));
  }

  void _toggleMealFavoriteStatus(Meal meal) {
    final isExisting = _favoriteMeals.contains(meal);

    if (isExisting) {
      setState(() {
        _favoriteMeals.remove(meal);
      });
      _showInfoMessage("${meal.title} is no longer a favorite.");
    } else {
      setState(() {
        _favoriteMeals.add(meal);
        _showInfoMessage("${meal.title} marked as favorite!");
      });
    }
  }

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

 void _setScreen(String identifier) async {
    Navigator.of(context).pop();
    if (identifier == "filter") {
     final result = await Navigator.of(context).push<Map<Filter,bool>>(
        MaterialPageRoute(
          builder: (context) => FiltersScreen(currentFilters: _selectedFilters,),
        ),
      );
     setState(() {
       _selectedFilters = result ?? kInitialFilters;
     });

    }
  }

  @override
  Widget build(BuildContext context) {
    final availableMeals =  dummyMeals.where((meal){
      if(_selectedFilters[Filter.glutenFree]! && !meal.isGlutenFree){
        return false;
      }
      if(_selectedFilters[Filter.lactoseFree]! && !meal.isLactoseFree){
      return false;
      }
      if(_selectedFilters[Filter.vegetarian]! && !meal.isVegetarian){
        return false;
      }
      if(_selectedFilters[Filter.vegan]! && !meal.isVegan){
        return false;
      }
      return true;
    }).toList();

    Widget activePage = CategoriesScreen(onToggleFavorite: _toggleMealFavoriteStatus, availableMeals: availableMeals,);
    var activePageTitle = "Categories";

    if (_selectedPageIndex == 1) {
      activePage = MealsScreen(
        meals: _favoriteMeals,
        onToggleFavorite: _toggleMealFavoriteStatus,
      );
      activePageTitle = "Your Favorites";
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(activePageTitle),
      ),
      drawer: MainDrawer(onSelectScreeen: _setScreen),
      body: activePage,
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        currentIndex: _selectedPageIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.set_meal),
            label: "Categories",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: "Favorites",
          ),
        ],
      ),
    );
  }
}
