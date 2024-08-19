import 'package:first_app/homeViewModel.dart';
import 'package:first_app/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => HomeScreenViewModel(),
    child: const MaterialApp(
      home: Scaffold(body: HomeScreen()),
    ),
  ));
}
