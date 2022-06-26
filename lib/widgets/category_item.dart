import 'package:flutter/material.dart';
import 'package:foodies/foodDescription.dart';

class category_item extends StatelessWidget {
  String id;
  String title;
  Color color;
  category_item(this.id,this.title,this.color);

  void newpagebutton(ctx)
  {
    Navigator.of(ctx).pushNamed(foodDescription.namedroute, arguments: {"id": id,"title": title});   // in arguments we can transfer number,string,map etc
  }                                                                                       // here we use 2nd method of navigator by using pushnamed

  @override
  Widget build(BuildContext context) {
    return InkWell(
      // splashColor: Colors.white,
      focusColor: Colors.white,
      borderRadius: BorderRadius.circular(15),
      onTap: () {
        return newpagebutton(context);
        },
      child: Container(padding: const EdgeInsets.all(25),
        child: FittedBox(child: Text(title,style: Theme.of(context).textTheme.titleLarge)),
        decoration: BoxDecoration(gradient: LinearGradient(colors: [color,Colors.indigo],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight),
            borderRadius: BorderRadius.circular(15)),
      ),
    );
  }
}



