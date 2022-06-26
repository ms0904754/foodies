import 'package:flutter/material.dart';
import 'widgets/category_item.dart';
import 'models/dummy_data.dart';

class category_screen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(                 //yaha se scaffold and appbar hata diya kyuki tab _screen me default tab bar use kar rahe hai jisme scaffold hai
        padding: const EdgeInsets.all(20.0),
        child: GridView(gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 200,childAspectRatio: 3/2,
        crossAxisSpacing: 20,mainAxisSpacing: 20), // child aspect ratio means height /width
        children: DUMMY_CATEGORIES.map((list) {
          return category_item(list.id,list.title,list.color);
        }).toList()),
    );
  }
}
