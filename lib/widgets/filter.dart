import 'package:flutter/material.dart';
import 'package:foodies/main_drawer.dart';

class Filter extends StatefulWidget {
  final Function selectfilter;
  final Map<String,bool> changesfilter;
  Filter(this.changesfilter,this.selectfilter);

  static const routename = "/filter";

  @override
  State<Filter> createState() => _FilterState();

}

class _FilterState extends State<Filter> {
  bool isLactosefree = false;
  bool isGlutanfree = false;
  bool isVegan = false;
  bool isVegetarian = false;

  Widget settingcontrol(bool currentbool,String text,String subtitle,Function(bool) update ){
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: SwitchListTile(value: currentbool,
        onChanged: update,
          title: Text(text,style: Theme.of(context).textTheme.headlineSmall,),
          subtitle: Text(subtitle),));
  }

  @override
  void initState() {                                    // initstate isliye use kiya hai taaki jo change kiya hai vo hate nhi
    isLactosefree = widget.changesfilter['Lactosefree']!;      //kyuki uper jo bool expression me likha hai vo set ho jata hai jab filter page se hat jate hai
    isGlutanfree = widget.changesfilter['Glutanfree']!;         // filter work to karta hai par jo filter switch me jo change kara hai vo dikhata nhi vapis jab uss filter page pe jate hai to isliye initsate use kiya hai
    isVegan = widget.changesfilter['Vegan']!;
    isVegetarian = widget.changesfilter['Vegetarian']!;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () {
           setState(() {
             Map<String, bool> filters = {
               'Lactosefree': isLactosefree,
               'Glutanfree': isGlutanfree,
               'Vegan': isVegan,
               'Vegetarian': isVegetarian
             };
             widget.selectfilter(filters);
           });
          }, icon: Icon(Icons.save))
        ],
        title: Text("Filter"),
        centerTitle: true,
      ),
      drawer: Mydrawer(),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: Center(child: Text("Adjust the food Setting",style: Theme.of(context).textTheme.headlineSmall,)),
          ),
        ),
        Expanded(child: ListView(children: [
          settingcontrol(isLactosefree,"isLactosefree", "Only Lactose free foods include",(newvalue) {
    setState(() {
    isLactosefree = newvalue;
    });}),
          settingcontrol(isGlutanfree,"isGlutanfree", "Only Glutan free foods include",(newvalue) {
    setState(() {
    isGlutanfree = newvalue;
    });}),
          settingcontrol(isVegetarian,"isVegetarian", "Only Vegetarian foods include",(newvalue) {
    setState(() {
    isVegetarian = newvalue;
    });}),
          settingcontrol(isVegan,"isVegan", "Only Vegan foods include",(newvalue) {
    setState(() {
    isVegan = newvalue;
    });}),
        ],),
    )
      ],)
    );
  }
}
