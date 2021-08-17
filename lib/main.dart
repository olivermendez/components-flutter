import 'package:flutter/material.dart';
import 'package:flutter_components/constant/theme.dart';
import 'package:flutter_components/pages/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: apariencia(),
        debugShowCheckedModeBanner: false,
        title: 'Componentes',
        home: HomePage());
  }
}
