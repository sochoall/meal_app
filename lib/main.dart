import 'package:flutter/material.dart';

import './screens/meal_detail_screen.dart';
import './screens/category_meals_screen.dart';
import './screens/tabs_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeliMeals',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        colorScheme: const ColorScheme(
            brightness: Brightness.light,
            primary: Colors.amber,
            onPrimary: Colors.white,
            secondary: Colors.orange,
            onSecondary: Colors.white,
            error: Colors.red,
            onError: Colors.white,
            background: Colors.grey,
            onBackground: Colors.white,
            surface: Colors.pink,
            onSurface: Colors.white),
        canvasColor: const Color.fromRGBO(255, 254, 221, 1),
        fontFamily: "Raleway",
        textTheme: ThemeData.light().textTheme.copyWith(
              bodyText1: const TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              bodyText2: const TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              headline1: const TextStyle(
                fontSize: 20,
                fontFamily: "RobotoCondensed",
                fontWeight: FontWeight.bold,
              ),
            ),
      ),
      // home: const CategoriesScreen(),
      initialRoute: "/",
      routes: {
        '/': (context) => const TabsScreen(),
        CategoriesMealScreen.routeName: (context) =>
            const CategoriesMealScreen(),
        MealDetailScreen.routeName: (context) => const MealDetailScreen(),
      },
      //When no route is defined we can use onGenerateRoute to make it go a
      //general screen
      // onGenerateRoute: (settings) {
      //   return MaterialPageRoute(
      //       builder: (context) => const CategoriesScreen());
      // },

      //We use this when there's no page to redirect and tehre's no
      //onGenerteRoute or route defined at all
      // onUnknownRoute: (settings) {
      //   return MaterialPageRoute(
      //       builder: (context) => const CategoriesScreen());
      // },
    );
  }
}
