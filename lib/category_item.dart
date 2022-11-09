import 'package:flutter/material.dart';

import './category_meals_screen.dart';

class CategoryItem extends StatelessWidget {
  final String id;
  final String title;
  final Color color;

  const CategoryItem(this.id, this.title, this.color, {super.key});

  void selectCategory(BuildContext context) {
    // This way we can move to another page (no routes)
    // Navigator.of(context).push(
    //   MaterialPageRoute(
    //     builder: (_) => CategoriesMealScreen(id, title),
    //   ),
    // );

    //This way we can move to anothe page (routes)
    Navigator.of(context).pushNamed(CategoriesMealScreen.routeName,
        arguments: {"id": id, "title": title});
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectCategory(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            color.withOpacity(0.7),
            color,
          ], begin: Alignment.topLeft, end: Alignment.bottomRight),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Text(
          title,
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
    );
  }
}
