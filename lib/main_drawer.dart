import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:foodies/widgets/filter.dart';

class Mydrawer extends StatelessWidget {
  const Mydrawer({Key? key}) : super(key: key);


  Widget Listtile(BuildContext context,String title,IconData icon,Function() tapbutton)
  {
    return ListTile(
      onTap: tapbutton,
      leading: Icon(icon,color: Theme.of(context).colorScheme.primaryContainer,size: 25,),
      title: Text(title,style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.indigo
      ),),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 120,
            width: double.infinity,
            color: Theme.of(context).colorScheme.primaryContainer,
            child: Center(
              child: Text("Cooking Up!",style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.white
              ),),
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height*0.05,),
          Listtile(context, "Meals", Icons.restaurant,() {
            Navigator.of(context).pushReplacementNamed("/");  //pushreplacement me ye fayda hai ki naya page old page ke top pe add nhi hoga balki old page ko replace karke naya page aa jayega
          }),
          Listtile(context, "Filters", Icons.settings,() {
            Navigator.of(context).pushReplacementNamed(Filter.routename);
          }),
        ],
      ),
    );
  }
}
