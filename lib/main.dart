import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portifolio/screens/about_screen.dart';
import 'file:///E:/flutter/my_portifolio/lib/utils/change_widget.dart';
import 'package:my_portifolio/screens/home_screen.dart';
import 'package:my_portifolio/screens/splash_screen.dart';
import 'package:my_portifolio/utils/app_routes.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ChangeWidget(),
      child: ScreenUtilInit(
        designSize: Size(1280, 720),
        allowFontScaling: true,
        builder: () => MaterialApp(
          title: 'Lucas Gonçalves Portfólio',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primaryColor: Color(0xff03016e),
            fontFamily: 'Savings Bond Shadow',
            textTheme: ThemeData.light().textTheme.copyWith(
                  headline6: TextStyle(
                    fontSize: 38.ssp,
                    fontFamily: 'Bebas Neue',
                    color: Color(0xff03016e),
                  ),
                ),
          ),
          initialRoute: '/',
          routes: {
            AppRoutes.HOME_SCREEN: (ctx) => HomeScreen(),
            AppRoutes.SPLASH_SCREEN: (ctx) => SplashScreen(),
            AppRoutes.ABOUT_SCREEN: (ctx) => AboutScreen(),
          },
        ),
      ),
    );
  }
}
