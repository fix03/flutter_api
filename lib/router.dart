import 'package:basic_flutter/menu.dart';
import 'package:basic_flutter/test1.dart';
import 'package:basic_flutter/test2.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> route = {
  '/test1': (BuildContext context) => const Test01(),
  '/test2': (BuildContext context) => const Test02(),
  '/menu': (BuildContext context) => const Menu(),
};