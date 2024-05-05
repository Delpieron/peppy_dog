import 'package:flutter/material.dart';
import 'package:peppy_dog/know_us_page.dart';
import 'package:peppy_dog/products_page.dart';
import 'package:peppy_dog/themes/light_theme.dart';

import 'home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Peppy Dog',
      debugShowCheckedModeBanner: false,
      theme: getThemeBySize(context),
      home: const Scaffold(
          body: DecoratedBox(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/home_page/pd_009_1.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: SingleChildScrollView(
                    primary: true,
                    child: Column(
            children: [
              HomePage(),KnowUsPage(),ProductsPage(),
              // Expanded(child: HomePage()),
              // Expanded(child: KnowUsPage()),
              // Expanded(child: ProductsPage()),
            ],
                    ),
                  ),
          )),
    );
  }

  ThemeData getThemeBySize(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    if (width < 600) {
      return mobileSmallLightTheme;
    }
    if (width < 1100) {
      return mobileLightTheme;
    }
    return lightTheme;
  }
}
