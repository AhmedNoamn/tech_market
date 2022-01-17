import 'package:flutter/material.dart';
import 'package:tech_market/constant.dart';
import 'package:tech_market/core/routes/routes.dart';
import 'package:tech_market/features/home/view.dart';
import 'package:tech_market/features/on_boarding/view.dart';
import 'package:tech_market/features/sign_up/view.dart';

import 'features/categories/view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tech Market',
      theme: Themes.light,
      navigatorKey: navigatorKey,
      onGenerateRoute: onGenerateRoute,
      home: HomeView(),
    );
  }
}
