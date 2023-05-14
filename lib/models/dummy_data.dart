import 'package:flutter/material.dart';
import 'package:foodies/models/category.dart';
import 'food.dart';


 const DUMMY_CATEGORIES = const [
  category(
    id: 'c1',
    title: 'Punjabi food',
    color: Colors.purple,
  ),
  category(
    id: 'c2',
    title: 'Rajasthani food',
    color: Colors.red,
  ),
  category(
    id: 'c3',
    title: 'Delhi food',
    color: Colors.orange,
  ),
  category(
    id: 'c4',
    title: 'Mumbai food',
    color: Colors.amber,
  ),
  category(
    id: 'c5',
    title: 'Chattisgarh food',
    color: Colors.blue,
  ),
  category(
    id: 'c6',
    title: 'Sikkim food',
    color: Colors.green,
  ),
  category(
    id: 'c7',
    title: 'Gujrati food',
    color: Colors.lightBlue,
  ),
  category(
    id: 'c8',
    title: 'Bengal food',
    color: Colors.lightGreen,
  ),
  category(
    id: 'c9',
    title: 'Kerela food',
    color: Colors.pink,
  ),
  category(
    id: 'c10',
    title: 'Uttrakhand food',
    color: Colors.teal,
  ),
];



 const DUMMY_MEALS = const [
   Meal(
     id: 'm11',
     categories: [
       'c1',
     ],
     title: 'Dal Makhani',
     affordability: Affordability.affordable,
     complexity: Complexity.simple,
     imageurl:
     'https://img.freepik.com/free-photo/indian-dhal-spicy-curry-bowl-spices-herbs-rustic-black-wooden-table_2829-18712.jpg?w=996&t=st=1682073911~exp=1682074511~hmac=f71a10c0dbf5fa71a3df2b00b14e2c585d1c20a18641f0e32c586a33df242099',
     duration: 20,
     ingredients: [
       '1-2 tbsp ghee / clarified butter',
       '1 bay leaf / tej patta',
       '2 large tomatoes',
       '1 tsp ginger-garlic paste',
       '1/2 tsp turmeric powder and 1/2 tsp cumin powder',
       '1 tsp coriander powder',
       '1 cup water',
       '▢¼ cup kidney beans / rajma',
     ],
     steps: [
       'in a large kadai add a tbsp of ghee and saute bay leaf for a minute. or till they turn fragrant..',
       'then add finely chopped onions and saute till they change in colour.',
       'once onions are done, add ginger-garlic paste. saute till raw smell disappears completely.',
       'now add chopped tomatoes and cook till they are soft.',
       'add turmeric, coriander powder, cumin powder, chilli powder and salt to taste. cook the masalas for a minute.',
       'once the masalas start releasing oil from sides, add cooked dal and give a good stir.',
       'adjust the consistency by adding 1 cup of water or as required.'
     ],
     isGlutanfree: false,
     isVegan: true,
     isVegetarian: true,
     isLactosefree: true,
   ),
  Meal(
    id: 'm1',
    categories: [
      'c5'
    ],
    title: 'Spaghetti with Tomato Sauce',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageurl:
    'https://upload.wikimedia.org/wikipedia/commons/thumb/2/20/Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg/800px-Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg',
    duration: 20,
    ingredients: [
      '4 Tomatoes',
      '1 Tablespoon of Olive Oil',
      '1 Onion',
      '250g Spaghetti',
      'Spices',
      'Cheese (optional)'
    ],
    steps: [
      'Cut the tomatoes and the onion into small pieces.',
      'Boil some water - add salt to it once it boils.',
      'Put the spaghetti into the boiling water - they should be done in about 10 to 12 minutes.',
      'In the meantime, heaten up some olive oil and add the cut onion.',
      'After 2 minutes, add the tomato pieces, salt, pepper and your other spices.',
      'The sauce will be done once the spaghetti are.',
      'Feel free to add some cheese on top of the finished dish.'
    ],
    isGlutanfree: false,
    isVegan: true,
    isVegetarian: true,
    isLactosefree: true,
  ),
  Meal(
    id: 'm2',
    categories: [
      'c2',
    ],
    title: 'Toast Hawaii',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageurl:
    'https://cdn.pixabay.com/photo/2018/07/11/21/51/toast-3532016_1280.jpg',
    duration: 10,
    ingredients: [
      '1 Slice White Bread',
      '1 Slice Ham',
      '1 Slice Pineapple',
      '1-2 Slices of Cheese',
      'Butter'
    ],
    steps: [
      'Butter one side of the white bread',
      'Layer ham, the pineapple and cheese on the white bread',
      'Bake the toast for round about 10 minutes in the oven at 200°C'
    ],
    isGlutanfree: false,
    isVegan: false,
    isVegetarian: false,
    isLactosefree: false,
  ),
  Meal(
    id: 'm3',
    categories: [
      'c2',
      'c3',
    ],
    title: 'Paav Bhaji',
    affordability: Affordability.pricey,
    complexity: Complexity.medium,
    imageurl:
    'https://www.thestatesman.com/wp-content/uploads/2019/07/pav-bhaji.jpg',
    duration: 45,
    ingredients: [
      '1 Tomato',
      '1 Cucumber',
      '1 Onion',
      'Ketchup',
      '2 Burger Buns'
    ],
    steps: [
      'Form 2 patties',
      'Fry the patties for c. 4 minutes on each side',
      'Quickly fry the buns for c. 1 minute on each side',
      'Bruch buns with ketchup',
      'Serve burger with tomato, cucumber and onion'
    ],
    isGlutanfree: false,
    isVegan: false,
    isVegetarian: true,
    isLactosefree: true,
  ),
  Meal(
    id: 'm4',
    categories: [
      'c4',
    ],
    title: 'Wiener Schnitzel',
    affordability: Affordability.luxurious,
    complexity: Complexity.medium,
    imageurl:
    'https://cdn.pixabay.com/photo/2018/03/31/19/29/schnitzel-3279045_1280.jpg',
    duration: 60,
    ingredients: [
      '8 Veal Cutlets',
      '4 Eggs',
      '200g Bread Crumbs',
      '100g Flour',
      '300ml Butter',
      '100g Vegetable Oil',
      'Salt',
      'Lemon Slices'
    ],
    steps: [
      'Tenderize the veal to about 2–4mm, and salt on both sides.',
      'On a flat plate, stir the eggs briefly with a fork.',
      'Lightly coat the cutlets in flour then dip into the egg, and finally, coat in breadcrumbs.',
      'Heat the butter and oil in a large pan (allow the fat to get very hot) and fry the schnitzels until golden brown on both sides.',
      'Make sure to toss the pan regularly so that the schnitzels are surrounded by oil and the crumbing becomes ‘fluffy’.',
      'Remove, and drain on kitchen paper. Fry the parsley in the remaining oil and drain.',
      'Place the schnitzels on awarmed plate and serve garnishedwith parsley and slices of lemon.'
    ],
    isGlutanfree: false,
    isVegan: false,
    isVegetarian: false,
    isLactosefree: false,
  ),
  Meal(
    id: 'm5',
    categories: [
      'c2'
          'c5',
      'c10',
    ],
    title: 'Salad with Smoked Salmon',
    affordability: Affordability.luxurious,
    complexity: Complexity.simple,
    imageurl:
    'https://cdn.pixabay.com/photo/2016/10/25/13/29/smoked-salmon-salad-1768890_1280.jpg',
    duration: 15,
    ingredients: [
      'Arugula',
      'Lamb\'s Lettuce',
      'Parsley',
      'Fennel',
      '200g Smoked Salmon',
      'Mustard',
      'Balsamic Vinegar',
      'Olive Oil',
      'Salt and Pepper'
    ],
    steps: [
      'Wash and cut salad and herbs',
      'Dice the salmon',
      'Process mustard, vinegar and olive oil into a dessing',
      'Prepare the salad',
      'Add salmon cubes and dressing'
    ],
    isGlutanfree: true,
    isVegan: false,
    isVegetarian: true,
    isLactosefree: true,
  ),
  Meal(
    id: 'm6',
    categories: [
      'c6',
      'c10',
    ],
    title: 'Delicious Orange Mousse',
    affordability: Affordability.affordable,
    complexity: Complexity.hard,
    imageurl:
    'https://cdn.pixabay.com/photo/2017/05/01/05/18/pastry-2274750_1280.jpg',
    duration: 240,
    ingredients: [
      '4 Sheets of Gelatine',
      '150ml Orange Juice',
      '80g Sugar',
      '300g Yoghurt',
      '200g Cream',
      'Orange Peel',
    ],
    steps: [
      'Dissolve gelatine in pot',
      'Add orange juice and sugar',
      'Take pot off the stove',
      'Add 2 tablespoons of yoghurt',
      'Stir gelatin under remaining yoghurt',
      'Cool everything down in the refrigerator',
      'Whip the cream and lift it under die orange mass',
      'Cool down again for at least 4 hours',
      'Serve with orange peel',
    ],
    isGlutanfree: true,
    isVegan: false,
    isVegetarian: true,
    isLactosefree: false,
  ),
  Meal(
    id: 'm7',
    categories: [
      'c7',
    ],
    title: 'Pancakes',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageurl:
    'https://cdn.pixabay.com/photo/2018/07/10/21/23/pancake-3529653_1280.jpg',
    duration: 20,
    ingredients: [
      '1 1/2 Cups all-purpose Flour',
      '3 1/2 Teaspoons Baking Powder',
      '1 Teaspoon Salt',
      '1 Tablespoon White Sugar',
      '1 1/4 cups Milk',
      '1 Egg',
      '3 Tablespoons Butter, melted',
    ],
    steps: [
      'In a large bowl, sift together the flour, baking powder, salt and sugar.',
      'Make a well in the center and pour in the milk, egg and melted butter; mix until smooth.',
      'Heat a lightly oiled griddle or frying pan over medium high heat.',
      'Pour or scoop the batter onto the griddle, using approximately 1/4 cup for each pancake. Brown on both sides and serve hot.'
    ],
    isGlutanfree: true,
    isVegan: false,
    isVegetarian: true,
    isLactosefree: false,
  ),
  Meal(
    id: 'm8',
    categories: [
      'c8',
    ],
    title: 'Creamy Indian Chicken Curry',
    affordability: Affordability.pricey,
    complexity: Complexity.medium,
    imageurl:
    'https://cdn.pixabay.com/photo/2018/06/18/16/05/indian-food-3482749_1280.jpg',
    duration: 35,
    ingredients: [
      '4 Chicken Breasts',
      '1 Onion',
      '2 Cloves of Garlic',
      '1 Piece of Ginger',
      '4 Tablespoons Almonds',
      '1 Teaspoon Cayenne Pepper',
      '500ml Coconut Milk',
    ],
    steps: [
      'Slice and fry the chicken breast',
      'Process onion, garlic and ginger into paste and sauté everything',
      'Add spices and stir fry',
      'Add chicken breast + 250ml of water and cook everything for 10 minutes',
      'Add coconut milk',
      'Serve with rice'
    ],
    isGlutanfree: true,
    isVegan: false,
    isVegetarian: false,
    isLactosefree: true,
  ),
  Meal(
    id: 'm9',
    categories: [
      'c9',
    ],
    title: 'Chocolate Souffle',
    affordability: Affordability.affordable,
    complexity: Complexity.hard,
    imageurl:
    'https://cdn.pixabay.com/photo/2014/08/07/21/07/souffle-412785_1280.jpg',
    duration: 45,
    ingredients: [
      '1 Teaspoon melted Butter',
      '2 Tablespoons white Sugar',
      '2 Ounces 70% dark Chocolate, broken into pieces',
      '1 Tablespoon Butter',
      '1 Tablespoon all-purpose Flour',
      '4 1/3 tablespoons cold Milk',
      '1 Pinch Salt',
      '1 Pinch Cayenne Pepper',
      '1 Large Egg Yolk',
      '2 Large Egg Whites',
      '1 Pinch Cream of Tartar',
      '1 Tablespoon white Sugar',
    ],
    steps: [
      'Preheat oven to 190°C. Line a rimmed baking sheet with parchment paper.',
      'Brush bottom and sides of 2 ramekins lightly with 1 teaspoon melted butter; cover bottom and sides right up to the rim.',
      'Add 1 tablespoon white sugar to ramekins. Rotate ramekins until sugar coats all surfaces.',
      'Place chocolate pieces in a metal mixing bowl.',
      'Place bowl over a pan of about 3 cups hot water over low heat.',
      'Melt 1 tablespoon butter in a skillet over medium heat. Sprinkle in flour. Whisk until flour is incorporated into butter and mixture thickens.',
      'Whisk in cold milk until mixture becomes smooth and thickens. Transfer mixture to bowl with melted chocolate.',
      'Add salt and cayenne pepper. Mix together thoroughly. Add egg yolk and mix to combine.',
      'Leave bowl above the hot (not simmering) water to keep chocolate warm while you whip the egg whites.',
      'Place 2 egg whites in a mixing bowl; add cream of tartar. Whisk until mixture begins to thicken and a drizzle from the whisk stays on the surface about 1 second before disappearing into the mix.',
      'Add 1/3 of sugar and whisk in. Whisk in a bit more sugar about 15 seconds.',
      'whisk in the rest of the sugar. Continue whisking until mixture is about as thick as shaving cream and holds soft peaks, 3 to 5 minutes.',
      'Transfer a little less than half of egg whites to chocolate.',
      'Mix until egg whites are thoroughly incorporated into the chocolate.',
      'Add the rest of the egg whites; gently fold into the chocolate with a spatula, lifting from the bottom and folding over.',
      'Stop mixing after the egg white disappears. Divide mixture between 2 prepared ramekins. Place ramekins on prepared baking sheet.',
      'Bake in preheated oven until scuffles are puffed and have risen above the top of the rims, 12 to 15 minutes.',
    ],
    isGlutanfree: true,
    isVegan: false,
    isVegetarian: true,
    isLactosefree: false,
  ),
  Meal(
    id: 'm10',
    categories: [
      'c2',
      'c5',
      'c10',
    ],
    title: 'Asparagus Salad with Cherry Tomatoes',
    affordability: Affordability.luxurious,
    complexity: Complexity.simple,
    imageurl:
    'https://cdn.pixabay.com/photo/2018/04/09/18/26/asparagus-3304997_1280.jpg',
    duration: 30,
    ingredients: [
      'White and Green Asparagus',
      '30g Pine Nuts',
      '300g Cherry Tomatoes',
      'Salad',
      'Salt, Pepper and Olive Oil',

    ],
    steps: [
      'Wash, peel and cut the asparagus',
      'Cook in salted water',
      'Salt and pepper the asparagus',
      'Roast the pine nuts',
      'Halve the tomatoes',
      'Mix with asparagus, salad and dressing',
      'Serve with Baguette'
    ],
    isGlutanfree: true,
    isVegan: true,
    isVegetarian: true,
    isLactosefree: true,
  ),

   Meal(
     id: 'm12',
     categories: [
       'c1'
     ],
     title: 'Salt Malai Lassi',
     affordability: Affordability.luxurious,
     complexity: Complexity.simple,
     imageurl:
     'https://www.indianveggiedelight.com/wp-content/uploads/2023/01/sweet-lassi-recipe-featured.jpg',
     duration: 15,
     ingredients: [
       '1 and 1/2 cups thick curd / yogurt chilled',
       '1/4 tsp jeera powder roast & ground',
       '1/4 tsp chat masala powder',
       'salt to taste',
       '1 tbsp cream / malai',

     ],
     steps: [
   'Take curd in a mixing bowl. Add salt, roasted jeera powder and chat masala powder.',
  ' Add malai. Blend it well using your hand blender or you can use your mixie and blend it till frothy.',
   'Serve Salt Lassi chilled and frothy with a sprinkle of jeera powder.'
     ],
     isGlutanfree: true,
     isVegan: true,
     isVegetarian: true,
     isLactosefree: false,
   ),
   Meal(
     id: 'm13',
     categories: [
       'c3'
     ],
     title: 'Chole bhature',
     affordability: Affordability.luxurious,
     complexity: Complexity.simple,
     imageurl:
'https://st5.depositphotos.com/5653638/62941/i/450/depositphotos_629410112-stock-photo-chole-bhature-north-indian-food.jpg',
     duration: 90,
     ingredients: [
   'bhatura:- ',
       '2 cup maida,2 tbsp rava / semolina (fine),1 tsp sugar,1/4 tsp baking soda',
       '1 tsp sugar,1/2 tsp salt,2 tbsp oil,oil (for frying)'
   'for pressure cooking chole:- 1 cup chana / chickpea (soaked overnight)',
       '2 tea bags,1/4 tsp baking soda,1 tsp salt,3 cup water'
   'for chhole preparation:- 2 tbsp oil,1 bay leaf',
       '1 black cardamom,2 pod cardamom,1 inch cinnamon,1 inch cinnamon',
   'Chole:- ',

   '1 tsp cumin / jeera',
   '1/2 tsp kasuri methi',
       '1 onion (finely chopped)',
   '1 tsp ginger garlic paste',
   '1/4 tsp turmeric',
   '1 tsp coriander powder',
   '1/2 tsp cumin powder',
   '1/2 tsp garam masala',
   '1 tsp aamchur',
   '1/4 tsp salt'

     ],
     steps: [
       'bhatura recipe:- ',
    ' firstly, in a large bowl take 2 cup maida, 2 tbsp rava, 1 tsp sugar, ¼ tsp baking soda, 1 tsp sugar, ½ tsp salt and 2 tbsp oil. mix well.',
   'now add 1/4 cup curd and mix well making sure everything is well combined.',
  'further, add water as required and knead the dough.',
   'knead to the smooth and soft dough without putting much pressure.',
   'grease the dough with oil, cover and rest for 2 hours',
   'after 2 hours, knead the dough slightly.',
   'pinch a ball sized dough and make a ball without andy cracks.',

       'chole recipe for batura:- ',
      ' firstly, in a pressure cooker take soaked chana. i have soaked 1 cup chana in enough water for 8 hours.',
       'add 2 tea bags, ¼ tsp baking soda, 1 tsp salt and 3 cup water.',
       'cover and pressure cook for 5 whistles. if you do not have tea bags, then you can prepare tea decoction and add to cooker.',
       'once the pressure releases, open the cooker and discard the tea bags. keep aside.',
      ' In a large kadai, heat 2 tbsp oil, 1 bay leaf, 1 black cardamom, 2 pod cardamom, 1 inch cinnamon, 1 tsp cumin, ½ tsp kasuri methi. saute on low flame until the spices turn aroamtic.',
     ],
     isGlutanfree: true,
     isVegan: true,
     isVegetarian: true,
     isLactosefree: false,
   ),
   Meal(
     id: 'm14',
     categories: [
       'c4'
     ],
     title: 'Vada Paav',
     affordability: Affordability.affordable,
     complexity: Complexity.simple,
     imageurl:
     'https://media.istockphoto.com/id/1329213718/photo/vada-pav.jpg?s=612x612&w=0&k=20&c=Yy3pm53KrPAnZXL9weCJDzXjxa2My34oVFx7RBCPmZ8=',
     duration: 30,
     ingredients: [
       '2 Tbsp oil',
       '1/4 tsp hing',
       '1 tsp mustard seeds',
       '2 tsp saunf1 onion',
       '2 tsp green chilli - garlic paste',
       '2 nos potato, boiled',
       '1 tsp turmeric powder'
       '1 tsp salt',
       '2 tsp red chilli powder',
       '2 tsp coriander leaves'

     ],
     steps: [
       'Take oil in a pan, put hing, mustard seeds and saunf. Roast together.',
       'Add onion and Green chilli-garlic paste and saute well.',
       ' Now add boiled potatoes, turmeric powder, aa tsp of salt, 2 tsp of red chilli powder and coriander leaves.',
       'Mix them well and add lemon juice. Saute to make a paste.'
     ],
     isGlutanfree: true,
     isVegan: true,
     isVegetarian: true,
     isLactosefree: true,
   ),
   Meal(
     id: 'm15',
     categories: [
       'c8'
     ],
     title: 'Bengali Rasgulla',
     affordability: Affordability.affordable,
     complexity: Complexity.simple,
     imageurl:
     'https://t3.ftcdn.net/jpg/01/16/27/78/360_F_116277891_zEuaQXVFXSQ7zf5XMLV47V1EnIIj6s9w.jpg',
     duration: 50,
     ingredients: [
       '2 Litre low fat milk (Refrigerated overnight, boiled)',
       '1/4 cup lemon juice (mixed in 1/4 cup water)',
       '1 tsp refined flour (maida) or semolina',
       '4 cups thin sugar syrup (flavored with cardamom or rosewater)',

     ],
     steps: [
'Remove whatever cream that forms over the milk.',
'Bring to a boil, lower heat and add the lemon mixture gradually, till milk curdles.',
'Does not matter if you do not use up the whole solution.',
'Shut off the heat and leave mixture to rest for 5 minutes.',
'Drain off water and leave the paneer in a colander for at least 4 hours.',
'Mash paneer very smooth (no grains).',
'Add the flour/semolina and mash some more.',
     ],
     isGlutanfree: true,
     isVegan: true,
     isVegetarian: true,
     isLactosefree: false,
   ),
   Meal(
     id: 'm16',
     categories: [
       'c1'
     ],
     title: 'Butter Chicken',
     affordability: Affordability.luxurious,
     complexity: Complexity.medium,
     imageurl:
     'https://www.licious.in/blog/wp-content/uploads/2020/10/butter-chicken--600x600.jpg',
     duration: 120,
     ingredients: [
       'For the marinade:-',
       'Raw Chicken',
       '2 tsp Red Chilli Powder',
       '2 tsp Ginger-Garlic Paste',
       '2 tsp Salt',
       '2 tsp Lemon Juice',
       '1/2 cup Curd',
       '2 tsp Mustard Oil',
       'For gravy:-',
       '2 tsp Oil',
       '2 to taste Butter Cubes',
       '3 gram Cloves',
       '1 Cinnamon Stick, sliced',
       '1 tsp Mace7 Cardamom',
       '4 Tomatoes, chopped',

     ],
     steps: [
       'For marination:- ',
       'In a mixing bowl, put raw chicken pieces and add salt, red chilli powder, ginger garlic paste and lemon juice. Mix well.',
       'Refrigerate for about 15-20 minutes.',
       'Now add curd to the refrigerated mix. Followed by salt, ginger garlic paste, red chilli powder, garam masala, kasuri methi and mustard oil. Mix well and refrigerate again for an hour.',
       'Roast the marinated chicken in an oven for about 30 minutes until it is three-fourth done.',
    'Prepare the chicken gravy:- ',
       'Heat 2 tsp of oil in a pan with butter.',
      ' Add cloves, cinnamon stick, mace and cardamom. Saute and then add chopped tomatoes, garlic and ginger. Mix well and then grind well.',
       'In another pan, heat another two cubes of butter, along with ginger garlic paste.',
       'Add green chilli, cardamom powder and cream. Mix well',
     ],
     isGlutanfree: true,
     isVegan: false,
     isVegetarian: false,
     isLactosefree: false,
   ),
   Meal(
     id: 'm17',
     categories: [
       'c2'
     ],
     title: 'Dal Baati',
     affordability: Affordability.pricey,
     complexity: Complexity.medium,
     imageurl:
     'https://media.istockphoto.com/id/852178538/photo/indian-cuisine-dal-baati.jpg?s=612x612&w=0&k=20&c=7Ssqcpl7RmGzrHrgCApMcoQMXG1zIENmpix9TN_-oeQ=',
     duration: 90,
     ingredients: [
       '1 cup wheat flour',
       '1/4 cup chana dal',
       '1/4 teaspoon garam masala powder',
       '1/8 teaspoon turmeric',
       '1/2 tablespoon lemon juice',
       '1/2 tablespoon coriander leaves',
       '1/4 teaspoon cumin seeds',
       '2 cup water',
       '1 tablespoon urad dal',
       '1/4 cup green moong dal',
       '1/2 tablespoon ghee and 1/2 teaspoon red chilli powder',
       '1/4 teaspoon coriander powder',
       '2 pinches salt and 1/4 inch ginger',

     ],
     steps: [
       'o prepare the baatis, take a glass bowl and add wheat flour with rawa, salt and ghee. Using your hands, knead a very stiff dough with warm water.',
       'Shape the dough in the size of a ping pong ball. Meanwhile, heat a gas tandoor and roast the dough balls on low heat for some time. Make sure they are brown and crusty.',
       'Then, break open from the top and pour some fresh ghee on the halves. Then to prepare the dal, wash all the dals together add 1 cup water and a quarter teaspoon of turmeric.',
       'Pressure cook the dals till 2 whistles. Allow the cooker to cool and remove the dal.',
       'Mix all the spice powders in 1/2 cup of water to make a thin paste. Put ghee in a pan over medium flame, add the cumin and coriander seeds.',
       'Then add the remaining water and stir well. Bring it to a boil. To get that extra zing, add lemon juice in it. Check and add salt if required.',

     ],
     isGlutanfree: true,
     isVegan: true,
     isVegetarian: true,
     isLactosefree: true,
   ),
   Meal(
     id: 'm18',
     categories: [
       'c6'
     ],
     title: 'Steamed Momos',
     affordability: Affordability.pricey,
     complexity: Complexity.medium,
     imageurl:
     'https://www.thespruceeats.com/thmb/UnVh_-znw7ikMUciZIx5sNqBtTU=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/steamed-momos-wontons-1957616-hero-01-1c59e22bad0347daa8f0dfe12894bc3c.jpg',
     duration: 40,
     ingredients: [
       '2 cups all-purpose flour, more for dusting',
       'Dash of salt, or to taste',
       '2 tablespoons vegetable oil, or sunflower or canola oil',
       '1 small onion, chopped very fine',
       '4 to 5 cloves garlic, chopped very fine',
       '9 ounces (250 grams) pork mince',
       '1 + 1/2 tablespoons soy sauce',
       '1 + 1/2 teaspoons chilli sauce',
       '1/2 teaspoon freshly ground black pepper'

     ],
     steps: [
       'Mix the flour and salt to taste and add a little water at a time, about 6 tablespoons total, to make a stiff dough. '
           'Place the dough on a clean work surface and knead until smooth, dusting the surface with flour if needed. Cover with a lightly damp kitchen towel while you work on the filling.',
       'Heat the oil in a pan and fry the onion till translucent. Add the garlic and fry till it begins to turn golden.',
       'Add the meat and brown.',
       'Add the soy and chilli sauces and mix well.',
       'Add the freshly ground pepper and salt to taste and cook till the pork is done. Let the filling cool to room temperature while you roll out the dough.',
       'Divide the dough into 16 equal-sized balls and roll into very thin circles of roughly 4" diameter, dusting the surface with flour if needed.',
       'Dab a tiny bit of water on the edges of the circle. Put a tablespoon of pork in the centre of each circle.',
       'Fold the edges over the pork and pinch and twist to seal or fold the Momo in half (into a semi-circular shape) and pinch the edges shut.',
       'Place the Momos in a steaming dish and cook for 10 to 15 minutes.',
       'Serve piping hot with tomato achaar and Thukpa.'
     ],
     isGlutanfree: true,
     isVegan: false,
     isVegetarian: false,
     isLactosefree: true,
   ),
   Meal(
     id: 'm19',
     categories: [
       'c6'
     ],
     title: 'Dal Bhat',
     affordability: Affordability.pricey,
     complexity: Complexity.medium,
     imageurl:
     'https://www.nehascookbook.com/wp-content/uploads/2020/11/Lasuni-dal-bhaat-WS.jpg',

     duration: 40,
     ingredients: [
       '1 1/2 cups uncooked rice',
       '1 cup dry Lentils (any color)',
       '1 small yellow onion',
       '3 cloves garlic',
       '1 tablespoon olive oil',
       '16 oz. canned tomatoes',
       '1/3 cup cilantro',
      ' 1 lime',
      ' 1 red chili',
       'Spices to taste: Salt, Cumin, Coriander, Turmeric, Cayenne Pepper'

     ],
     steps: [
       'Begin cooking the rice according to the package instructions (usually 2 parts water to 1 part rice).',
       'Once the rice is starting, chop the onion and garlic and add them to a large pan with a splash of olive oil.',
       'Once the onions and garlic have softened, add the lentils and allow them to cook dry for a minute or two, then add about 3 cups of water into the pan, cover, and let cook.',
       'Once that water is absorbed (15+ minutes), add the spices to taste (about 1/2 teaspoon of each to start), the can of tomatoes, and more water (if needed).',
       'Simmer for another 10-15 minutes until the lentils are fully cooked and the flavors have melded together perfectly. Give them a taste and adjust any seasonings as needed.',
       'At the very last minute, add a handful of chopped cilantro and remove from the heat. The rice should be cooked and fluffy at this point.',
       'To serve, add a few heaping spoons of rice to a plate and top with the lentils. Garnish with a lime wedge, some sliced chilies, and a sprig of cilantro.'
     ],
     isGlutanfree: true,
     isVegan: true,
     isVegetarian: true,
     isLactosefree: true,
   ),
   Meal(
     id: 'm20',
     categories: [
       'c2'
     ],
     title: 'Pyaaz Kachori',
     affordability: Affordability.pricey,
     complexity: Complexity.medium,
     imageurl:
     'https://images.hindi.news18.com/ibnkhabar/uploads/2021/10/Pyaz-kachori-16333475044x3.jpg',

     duration: 40,
     ingredients: [
       'For Kachori Dough:- ',
       '1 cup Refined Flour',
       '1/2 tsp Carom Seeds',
       '3 tbsp Ghee',
       'Salt to taste',
       'Water',

       'For Powder Masala:- ',
       '2 tbsp Coriander Seeds',
       '1 tsp Cumin Seeds',
       '1 tsp Fennel Seeds ',
       '1/2 tsp Salt',

       'For Filling:- '

       '1 tbsp Oil (तेल),1 tbsp Ghee',

       'Prepared Powder Masala',

       '1/4 tsp Asafoetida, 1 inch Ginger – chopped, 2-3 fresh Green Chillies – chopped',

       '3 large Onion – chopped, 2 heaped tbsp Gram Flour, 1/2 tsp Turmeric Powder',

       '1/2 tsp Degi Red Chilli Powder, Salt to taste, 1/4 tsp Citric Acid',

       '2 medium Potatoes, 1/4 tsp Dried Mango Powder, 2 tbsp Coriander Leaves – chopped '
     ],
     steps: [
       'For Kachori Dough:- '

       'In a bowl add refined flour, carom seeds, ghee, salt and mix everything once properly.',
       'Now add water and knead a semi hard dough and keep aside for 10-15 minutes to rest.'

       'For Powder Masala:- ',

       'In a pan add coriander seeds, cumin seeds, fennel seeds and roast them lightly. Remove and let them cool.',
       'Once cooled, grind it into a coarse powder. Keep aside for further use.'

     'For Filling:- '

     'In a pan heat oil, ghee and add the prepared masala, asafoetida, green chillies, ginger, onion and saute until translucent or soft.',
     'Now add gram flour, turmeric powder, degi red chilli powder, salt and saute until fragrant.',
     'Then add citric acid, mashed potatoes, dried mango powder, mix and cook for a minute.',
     'Now finish it with chopped coriander leaves and switch off the flames. Keep aside to cool down.',

       'For Assembling Pyaz ki Kachori:- '

       'Keep oil to heat in a kadai on medium heat.',
       'Now take a small portion of the dough and spread it using your hand and keep it thick in central and thin at the edges.',
       'Then add the spoonful of filling in it and close it up and roll light with a rolling pin (like a puri). Repeat for remaining dough and filling.',
       'Now deep fry them in medium hot oil until golden brown and crispy.',
       'Remove on an absorbent paper and serve hot with chutney or tea.'
     ],
     isGlutanfree: true,
     isVegan: true,
     isVegetarian: true,
     isLactosefree: true,
   ),
];

