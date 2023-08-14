import 'package:flutter/material.dart';
import 'package:section_13_flutter_dart_native_device_feat_camera_favorite_places_app/screens/add_place.dart';
import 'package:section_13_flutter_dart_native_device_feat_camera_favorite_places_app/widgets/places_list.dart';

class PlacesScreen extends StatelessWidget {
  const PlacesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Your Places"),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (ctx) => AddPlaceScreen(),
                ),
              );
            },
            icon: Icon(Icons.add),
          ),
        ],
      ),
      body: PlacesList(
        places: [],
      ),
    );
  }
}
