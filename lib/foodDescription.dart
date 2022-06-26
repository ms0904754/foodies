import 'package:flutter/material.dart';
import 'package:foodies/widgets/Meal_item.dart';

import 'models/dummy_data.dart';
import 'models/food.dart';

class foodDescription extends StatefulWidget {
  final List<Meal> newmeal;
  foodDescription(this.newmeal);

  static const namedroute = '/categoryfood';
  @override
  State<foodDescription> createState() => _foodDescriptionState();
}

class _foodDescriptionState extends State<foodDescription> {
   // here we use another method by writing fooddescription.routename instead of "/categoryfood" it would give less error may be in future

  String? categorytitle;
  List<Meal>? categorymeals;
  @override
  void didChangeDependencies() {
        final routesArgument = ModalRoute.of(context)?.settings.arguments as Map<String,String>;
        categorytitle = routesArgument['title'];
        final categoryid = routesArgument['id'];
        categorymeals = widget.newmeal.where((meal){
          return meal.categories.contains(categoryid);
        } ).toList();

    super.didChangeDependencies();
  }

  // @override
  // void removeMeal(String id)
  // {
  //   setState(() {
  //     categorymeals?.removeWhere((meal) =>meal.id==id);
  //   });
  // }

                                                            // initstate ke andar context pass nhi karte uske bajaye didchangedependencies
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(categorytitle!),
        centerTitle: true,
      ),
      body: ListView.builder(itemBuilder: (context,index) {
         return Meal_Item(title: categorymeals![index].title,
           imageurl: categorymeals![index].imageurl,
           ingredients: categorymeals![index].ingredients,
           duration: categorymeals![index].duration,
           complexity:categorymeals![index].complexity,
           affordability: categorymeals![index].affordability,
           id: categorymeals![index].id,
        );
      },itemCount: categorymeals?.length,)
    );
  }
}
