import 'package:flutter/material.dart';
import './providers/great_places.dart';
import 'package:provider/provider.dart';
import './screens/places_list_screen.dart';
import './screens/add_place_screen.dart';
import 'screens/place_detail_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
        value: GreatPlaces(),
        child: MaterialApp(
          title: 'Playces',
          theme: ThemeData(
            primarySwatch: Colors.blue,
            primaryColor: Colors.blue.shade900,
            accentColor: Colors.amber.shade600,
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          home: PlacesListScreen(),
          debugShowCheckedModeBanner: false,
          routes: {
            AddPlaceScreen.routeName: (ctx) => AddPlaceScreen(),
            PlaceDetailScreen.routeName: (ctx) => PlaceDetailScreen(),
          },
        ));
  }
}
