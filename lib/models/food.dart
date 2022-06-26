
enum Complexity{
  simple,
  medium,
  hard
}

enum Affordability{
  affordable,
  pricey,
  luxurious
}



class Meal{
  final String id;
  final List<String> categories;
  final String title;
  final String imageurl;
  final List<String> ingredients;
  final List<String> steps;
  final int duration;
  final Complexity complexity;
  final Affordability affordability;
  final bool isLactosefree;
  final bool isGlutanfree;
  final bool isVegan;
  final bool isVegetarian;

   const Meal({required this.id,
    required this.categories,
    required this.title,
    required this.imageurl,
    required this.ingredients,
    required this.steps,
    required this.duration,
    required this.complexity,
    required this.affordability,
    required this.isLactosefree,
    required this.isGlutanfree,
    required this.isVegan,
    required this.isVegetarian});

}