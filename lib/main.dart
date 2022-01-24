import 'package:flutter/material.dart';

import 'constant.dart';
import 'core/routes/routes.dart';
import 'features/on_boarding/view.dart';

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
      home: OnBoardingView(),
    );
  }
}
