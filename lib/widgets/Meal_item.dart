import 'package:flutter/material.dart';
import 'package:foodies/models/food.dart';
import 'package:foodies/widgets/MealDescription.dart';

class Meal_Item extends StatelessWidget {
  final String id;
  final String title;
  final String imageurl;
  final List<String> ingredients;
  final int duration;
  final Complexity complexity;
  final Affordability affordability;

  const Meal_Item({required this.title, required this.imageurl, required this.ingredients, required this.duration, required this.complexity, required this.affordability, required this.id});

String get ComplexityText {
  if(complexity ==Complexity.simple)
    {
      return "simple";
    }else if(complexity ==Complexity.medium)
      {
        return "medium";
      }else if(complexity ==Complexity.hard)
        {
          return "hard";
        }else
          {
            return "unknown";
          }
}
String get AffordabilityText {
  if(affordability ==Affordability.affordable)
    {
      return "affordable";
    }else if(affordability ==Affordability.pricey)
      {
        return "pricey";
      }else if(affordability ==Affordability.luxurious)
        {
          return "luxurious";
        }else
          {
            return "unknown";
          }
}
  void mealdescp(ctx)
  {
    Navigator.of(ctx).pushNamed(MealDescription.namedroute,arguments: id).then((value)                //.then() tab use hoga jab mealdescription wala page hatega
    {
      if(value!=null)
        {
          // removeitem(value);
        }
    } );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => mealdescp(context),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        elevation: 4,
        margin: EdgeInsets.all(20),
        child: Column(children: [
          Stack(children: [
            ClipRRect(borderRadius: BorderRadius.only(          // cliprrect use isliye kiya take iske child ka shape change kar sake
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            ),
            child: Image.network(imageurl,height: 250,width: double.infinity,fit: BoxFit.cover),),
            Positioned(
              top: 160,
              left: 90,
              child: Container(
                width: 198,
                padding: EdgeInsets.symmetric(horizontal: 20),
                color: Colors.black54,
                child: Text(title,style: Theme.of(context).textTheme.titleSmall,softWrap: true,overflow: TextOverflow.fade,),  //softwrap me ye hai kisingle line me nhi maata to agli line me chala jayega aur agar tabh bhi maata overflow ka use kara hai
                alignment: Alignment.bottomCenter,
              ),
            )
          ],),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 4),
            child: FittedBox(
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,children: [
                Row(children: [
                  Icon(Icons.schedule),
                  SizedBox(width: 5),
                  Text("${duration} min",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),)
                ],),
                SizedBox(width: 10,),
                Row(children: [
                  Icon(Icons.work),
                  SizedBox(width: 5,),
                  Text(ComplexityText,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),)
                ],),
                SizedBox(width: 8,),
                Row(children: [
                  Icon(Icons.currency_rupee),
                  SizedBox(width: 3,),
                  Text(AffordabilityText,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),)
                ],)
              ],),
            ),
          )
        ],),
      ),
    );
  }
}
