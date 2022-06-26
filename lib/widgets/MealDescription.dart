
import 'package:flutter/material.dart';

import '../models/dummy_data.dart';

class MealDescription extends StatelessWidget {
  static const namedroute = '/mealdesc';
  final Function togglefavorite;
   Function ismealfavorite;

  MealDescription(this.togglefavorite,this.ismealfavorite);

  Widget titlebuild(String text)
  {
    return   Container(
      margin: EdgeInsets.symmetric(vertical: 15),
      child: Text(text,
        style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),);
  }

   Widget Itembuild(BuildContext context,Widget child)
  {
    return Container(height: MediaQuery.of(context).size.height*0.4,
    width: MediaQuery.of(context).size.width*0.8,
  decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Colors.yellow,border: Border.all(color: Colors.grey)),
    child: child);
  }
  Widget Stepsbuild(BuildContext context,Widget child)
  {
    return Container(height: MediaQuery.of(context).size.height*0.4,
    width: MediaQuery.of(context).size.width*0.8,
  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),border: Border.all(color: Colors.grey)),
    child: child);
  }



  @override
  Widget build(BuildContext context) {
    final mealid = ModalRoute.of(context)?.settings.arguments as String;
    final selectmeal = DUMMY_MEALS.firstWhere((dummymeal) => dummymeal.id == mealid);   //firstwhere isliye use kiya kyuki ek hi element chate hai
    return Scaffold(
      appBar: AppBar(
        title: Text(selectmeal.title),
        centerTitle: true,
      ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(height: MediaQuery.of(context).size.height*0.4,width: double.infinity,
                child: Image.network(selectmeal.imageurl,fit: BoxFit.cover,),),

              titlebuild("Ingredients"),
              Itembuild(context, ListView.builder(itemBuilder: (context, index) {
                return Card(child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15,vertical: MediaQuery.of(context).size.height*0.006),
                  child: Text(selectmeal.ingredients[index],style: Theme.of(context).textTheme.headlineSmall,),
                ),);
              },itemCount: selectmeal.ingredients.length,)),
              titlebuild("Steps to Make"),
              Stepsbuild(context, ListView.builder(itemBuilder: (context, index) {
                return Column(
                  children: [
                    ListTile(
                      leading: CircleAvatar(child: Text("${index + 1}"),backgroundColor: Colors.indigo,foregroundColor: Colors.white,),
                      title: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 5),
                        child: Text(selectmeal.steps[index],style: Theme.of(context).textTheme.headlineMedium,),
                      ),
                    ),
                      Divider(thickness: 2,)  // it creates line between steps
                  ],
                );
              },itemCount: selectmeal.steps.length,)),
            ],

          ),
        ),
      floatingActionButton: FloatingActionButton(child: Icon(
          ismealfavorite(mealid)? Icons.favorite:Icons.favorite_border
      ),
        // onPressed: () {
        // Navigator.of(context).pop(mealid);            // yaha pe jo bhi pop ke andar paas karege vo Meal_item.dart me jo then ke andar value hai usme jayega
        // },
        onPressed: () => togglefavorite(mealid),
      ),
    );
  }
}
