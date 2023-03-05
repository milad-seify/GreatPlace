import 'package:flutter/material.dart';
import 'package:native_app/providers/great_places.dart';
import 'package:native_app/screens/place_list_screen.dart';
import 'package:provider/provider.dart';
import './screens/add_place_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: GreatPlaces(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'native',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.indigo)
              .copyWith(secondary: Colors.yellow),
        ),
        home: PlaceListScreen(),
        routes: {AddPlaceScreen.routeName: (context) => AddPlaceScreen()},
      ),
    );
  }
}
