import 'package:flutter/material.dart';
import 'package:foodies/foodDescription.dart';
import 'package:foodies/widgets/MealDescription.dart';
import 'package:foodies/widgets/Tab_screen.dart';
import 'package:foodies/widgets/filter.dart';
import 'category_screen.dart';
import 'models/dummy_data.dart';
import 'models/food.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Meal> currentmeal = DUMMY_MEALS;
  Map<String, bool> filters = {
    'Lactosefree': false,
    'Glutanfree': false,
    'Vegan': false,
    'Vegetarian': false
  };
  void selectbool(Map<String, bool> filterdata) {
    setState(() {
      filters = filterdata;
       currentmeal = DUMMY_MEALS.where((meal) {
        if (filters['Lactosefree']! && !meal.isLactosefree) {
          return false;
        }
        if (filters['Glutanfree']! && !meal.isGlutanfree ) {
          return false;
        }
        if (filters['Vegan']! && !meal.isVegan) {
          return false;
        }
        if (filters['Vegetarian']! && !meal.isVegetarian) {
          return false;
        }
        return true;
      }).toList();
    });
  }

  List<Meal> favoritelist = [];

  void togglefavourite(String id)
  {
    final existingindex = favoritelist.indexWhere((meal) => meal.id == id);     // agar favorite list me kuch bhi add nhi hoga to index 0 hoga or yu kahe koi id match nhi hoti to index 0 hoga
    if(existingindex>=0)
      {
        print(existingindex);
        print(ismealfavorite);
        setState(() {
          favoritelist.removeAt(existingindex);
        });
      }else
        {
          setState(() {
            favoritelist.add(DUMMY_MEALS.firstWhere((meal) => meal.id==id));
          });
        }
  }

  bool ismealfavorite(String id)
  {
    return favoritelist.any((meal) => meal.id==id);
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Foodies',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.indigo),
        canvasColor: Colors.white,
          textTheme: Theme.of(context).textTheme.copyWith(
        titleLarge: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
          color: Colors.white,
          fontFamily: "Lobster",
            // fontStyle: FontStyle.normal
        ),
              titleSmall: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontFamily: 'Merriweather'
            ),
            headlineSmall: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black
            ),
            headlineMedium: TextStyle(
              backgroundColor: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black
            ),
      ),
      ),
      initialRoute: '/',
      routes: {
        "/": (context) => Tab_screen(favoritelist),
        foodDescription.namedroute: (context) => foodDescription(currentmeal),
        MealDescription.namedroute: (context) => MealDescription(togglefavourite,ismealfavorite),
        // Filter.routename: (context) => Filter()
        // or
        "/filter": (context) => Filter(filters,selectbool)
      },
      onUnknownRoute: (settings) {                                  // isme ye fayda hai ki koi route agar registered nhi milta hai routes me to error se bachne ke liye apan ye istamal karege
        return MaterialPageRoute(builder: (context) => category_screen());
      },
    );
  }
}

