import 'package:flutter/material.dart';

import '../models/food.dart';
import 'Meal_item.dart';

class favorite_Screen extends StatelessWidget {
  final List<Meal> favoritelist;
  favorite_Screen(this.favoritelist);

  @override
  Widget build(BuildContext context) {
    if(favoritelist.isEmpty)
      {
        return Container(
          child: Center(child: Text("favourite food list is Empty"),),
        );
      }else
        {
          return ListView.builder(itemBuilder: (context,index) {
            return Meal_Item(title: favoritelist[index].title,
              imageurl: favoritelist[index].imageurl,
              ingredients: favoritelist[index].ingredients,
              duration: favoritelist[index].duration,
              complexity:favoritelist[index].complexity,
              affordability: favoritelist[index].affordability,
              id: favoritelist[index].id,
              );                                     // removeitem: removeMeal,
          },itemCount: favoritelist.length,);
        }
  }
}
