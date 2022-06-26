import 'dart:io';
import 'package:flutter/material.dart';
import 'package:foodies/category_screen.dart';
import '../main_drawer.dart';
import '../models/food.dart';
import 'favorite_Screen.dart';

class Tab_screen extends StatefulWidget {
   List<Meal> favoritelist;

   Tab_screen(this.favoritelist);

  @override
  State<Tab_screen> createState() => _Tab_screenState();
}

class _Tab_screenState extends State<Tab_screen> {
   List<Map<String,Object>>? screenchoosen;
   int tabindex = 0 ;

  @override
  void initState() {                                          // isko inistate me isliye likha hai kyuki jo arg favorite_screen() me paas
    screenchoosen= [                                          // karege use pehle widget. lagana padega jo ya to build context ke andar laga sakte hai ya initsate ke andar
      {'page': category_screen(), 'title': "Foodies"},
      {'page': favorite_Screen(widget.favoritelist), 'title': "Favourite"},
    ];

    super.initState();
  }

  void _selecttab(int index)
  {
    setState(() {
      tabindex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Platform.isAndroid?Scaffold(
      appBar: AppBar(
        title: Text(screenchoosen![tabindex]['title'] as String),
        centerTitle: true,
      ),
      drawer: Mydrawer(),
      body: screenchoosen![tabindex]['page'] as Widget,
      bottomNavigationBar: BottomNavigationBar(
        // backgroundColor: Theme.of(context).colorScheme.primaryContainer,
        selectedItemColor: Colors.deepOrangeAccent,
        unselectedItemColor: Colors.white,
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.blue),
        unselectedLabelStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),
        type: BottomNavigationBarType.shifting,    // isme shift wali creativity dikh rhi hai
        onTap: _selecttab,
        currentIndex: tabindex,        // isse hume ye pata chal jayega ki apan konse tab pe hai kyuki color change hota hai
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.category),
            label: "Category",
            backgroundColor: Theme.of(context).colorScheme.primaryContainer,),
          BottomNavigationBarItem(icon: Icon(Icons.favorite),
              label: "Favourite",activeIcon: Icon(Icons.favorite),
            backgroundColor: Theme.of(context).colorScheme.primaryContainer,),
        ],
      ),

    ):
    DefaultTabController(length: 2, child: Scaffold(
      appBar: AppBar(title: Text("Foodies"),
        bottom: TabBar(tabs: [
          Tab(icon: Icon(Icons.category),text: "Category",),
          Tab(icon: Icon(Icons.favorite),text: "Favourite",),
        ],),
      ),
      body: TabBarView(children: [
        category_screen(),
        favorite_Screen(widget.favoritelist)
      ],),
    )
    );
  }
}

