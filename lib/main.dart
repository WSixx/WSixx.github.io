import 'package:flutter/material.dart';
import 'package:my_portifolio/home_screen.dart';
import 'package:my_portifolio/utils/app_routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xff03016e),
        fontFamily: 'Savings Bond Shadow',
        textTheme: ThemeData.light().textTheme.copyWith(
              headline6: TextStyle(
                fontSize: 26,
                fontFamily: 'Bebas Neue',
                color: Color(0xff03016e),
              ),
            ),
      ),
      initialRoute: '/',
      routes: {
        AppRoutes.HOME_SCREEN: (ctx) => HomeScreen(),
      },
    );
  }
}
