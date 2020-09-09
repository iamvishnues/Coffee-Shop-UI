import 'dart:ffi';

import 'package:coffeshop/screens/dashboard.dart';
import 'package:flutter/material.dart';

Void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DashboardPage();
  }
}
