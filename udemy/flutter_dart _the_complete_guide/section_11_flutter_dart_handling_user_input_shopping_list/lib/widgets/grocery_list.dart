import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:section_11_flutter_dart_handling_user_input_shopping_list/models/grocery_item.dart';
import 'package:section_11_flutter_dart_handling_user_input_shopping_list/widgets/new_item.dart';
import "package:http/http.dart" as http;
import '../data/categories.dart';

class GroceryList extends StatefulWidget {
  const GroceryList({super.key});

  @override
  State<GroceryList> createState() => _GroceryListState();
}

class _GroceryListState extends State<GroceryList> {
  List<GroceryItem> _groceryItems = [];

  var _isLoading = true;

  String? _error;

  @override
  void initState() {
    super.initState();
    _loadItems();
  }

  void _loadItems() async {

    final url = Uri.https("flutter-udemy-1-62326-default-rtdb.firebaseio.com", "shopping-list.json");
     try{
    final response = await http.get(url);

    if (response.statusCode >= 400) {
      setState(() {
        _error = "Failed to fetch data. Please try again later.";
      });
    }
    if (response.body == "null") {
      setState(() {
        _isLoading = false;
      });
      return;
    }

    final Map<String, dynamic> listData = json.decode(response.body);
    final List<GroceryItem> loadedItens = [];
    for (final item in listData.entries) {
      final category =
          categories.entries.firstWhere((catItem) => catItem.value.title == item.value["category"]).value;
      loadedItens.add(
        GroceryItem(
          id: item.key,
          name: item.value["name"],
          quantity: item.value["quantity"],
          category: category,
        ),
      );
    }

    setState(() {
      _groceryItems = loadedItens;
      _isLoading = false;
    });

  }

  catch (error){
    setState(() {
      _error = "Something went wrong!. Please try again later.";
    });
  }
  }

  void _addItem() async {
    final newItem = await Navigator.of(context).push<GroceryItem>(
      MaterialPageRoute(
        builder: (ctx) => const NewItem(),
      ),
    );
    if (newItem == null) {
      return;
    }

    setState(() {
      _groceryItems.add(newItem);
    });
    _loadItems();
  }

  void _removeItem(GroceryItem item) async {
    final index = _groceryItems.indexOf(item);
    setState(() {
      _groceryItems.remove(item);
    });

    final url =
        Uri.https("flutter-udemy-1-62326-default-rtdb.firebaseio.com", "shopping-list/${item.id}.json");

    final response = await http.delete(url);

    if (response.statusCode >= 400) {
      setState(() {
        _groceryItems.insert(index, item);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget content = const Center(child: Text("No items added yet"));

    if (_isLoading) {
      content = Center(
          child: CircularProgressIndicator(
        color: Theme.of(context).colorScheme.onBackground,
      ));
    }

    if (_groceryItems.isNotEmpty) {
      content = ListView.builder(
        itemCount: _groceryItems.length,
        itemBuilder: (ctx, index) => Dismissible(
          direction: DismissDirection.endToStart,
          background: Container(
            color: Colors.redAccent,
          ),
          onDismissed: (direction) {
            _removeItem(_groceryItems[index]);
          },
          key: ValueKey(_groceryItems[index].id),
          child: ListTile(
            title: Text(_groceryItems[index].name),
            leading: Container(
              width: 24,
              height: 24,
              color: _groceryItems[index].category.color,
            ),
            trailing: Text(_groceryItems[index].quantity.toString()),
          ),
        ),
      );
    }
    if (_error != null) {
      content = Center(child: Text(_error!));
    }
    return Scaffold(
        appBar: AppBar(
          title: const Text("Your Groceries"),
          actions: [
            IconButton(
              onPressed: _addItem,
              icon: const Icon(Icons.add),
            ),
          ],
        ),
        body: content


    );
  }
}
