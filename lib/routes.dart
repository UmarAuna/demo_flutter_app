import 'package:flutter/material.dart';
import 'package:hello_world/navigation_example_page.dart';

final Map<String, WidgetBuilder> routes = {
  NavigationExamplePage.id: (context) => const NavigationExamplePage(),
};
