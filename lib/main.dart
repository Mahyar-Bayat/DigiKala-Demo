import 'package:digikala_demo/screens/general_pages/cart_screen.dart';
import 'package:digikala_demo/screens/general_pages/category_screen.dart';
import 'package:digikala_demo/screens/general_pages/my_digikala_screen.dart';
import 'package:digikala_demo/screens/login/splash_screen.dart';
import 'package:flutter/material.dart';

import 'screens/general_pages/home_screen.dart';

void main() => runApp(const DigiKala());

class DigiKala extends StatelessWidget {
  const DigiKala({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'digikala',
      initialRoute: '/splash_screen',
      routes: {
        '/': (context) => const Directionality(
            textDirection: TextDirection.ltr, child: HomeScreen()),
        '/splash_screen': (context) => const Directionality(
            textDirection: TextDirection.ltr, child: SplashScreen()),
        '/category': (context) => const Directionality(
            textDirection: TextDirection.ltr, child: CategoryScreen()),
        'cart': (context) => const Directionality(
            textDirection: TextDirection.ltr, child: CartScreen()),
        'my_digikala': (context) => const Directionality(
            textDirection: TextDirection.ltr, child: MyDigikalaScreen()),
      },
    );
  }
}
