import 'package:basic_flutter/router.dart';
import 'package:flutter/material.dart';

String routes = '/test1';
Future<void> main() async {
  runApp(const MyApp());
} 
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: route,
      initialRoute: routes,
    );
  }
}