import 'package:flutter/material.dart';
import 'package:tech_e_commerce_app/screens/screens.dart';
import 'config/themes/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tech E-commerce App',
      theme: theme,
      home: const ItemSearchPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
