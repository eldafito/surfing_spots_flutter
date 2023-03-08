import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:surfing_spots/main_repository.dart';
import 'package:surfing_spots/main_screen.dart';
import 'package:surfing_spots/main_view_model.dart';
import 'locator.dart';

void main() {
  setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<MainViewModel>(
        create: (BuildContext context) =>
            MainViewModel(repository: locator<MainRepository>()),
        child: MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            home: const MainScreen()));
  }
}
