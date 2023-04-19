import 'package:flutter/material.dart';

import 'Widget/systems.dart';

class Normal extends StatefulWidget {
  const Normal({Key? key}) : super(key: key);

  @override
  State<Normal> createState() => _NormalState();
}

class _NormalState extends State<Normal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(255, 251, 206, 1),
        elevation: 0,
        leading: const Icon(
          Icons.arrow_back,
          color: Colors.black,
          size: 30,
        ),
        title: Text(
          "Thin ",
          style: Theme.of(context).textTheme.displayLarge,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Custom1(text: "1400 Calories System "),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: const [
                  Custom(
                    color: Color.fromRGBO(199, 238, 255, .8),
                    text: "Breakfast ",
                    text1: " Avocado toast with    ",
                    text2: " eggs and a side ",
                    text4: " Greek yogurt with  ",
                    text5: "granola, berries ",
                    text3: "  fruit",
                  ),
                  Custom(
                    color: Color.fromRGBO(228, 208, 238, .8),
                    text: "Snack1 ",
                    text1: " Smoothie bowl with ",
                    text2: " mixed berries,almond",
                    text3: ", and protein powder",
                  ),
                  Custom(
                    color: Color.fromRGBO(255, 198, 230, .8),
                    text: "Lunch ",
                    text1: " Grilled chicken with   ",
                    text2: " quinoa and mixed  ",
                    text4: " Greek yogurt with  ",
                    text5: "granola, berries ",
                    text3: "vegetables ",
                    text6: "Lentil soup with whole",
                    text7: "grain bread ",
                  ),
                  Custom(
                    color: Color.fromRGBO(199, 246, 209, .8),
                    text: "  Snack2 ",
                    text1: " 3 grains of dates ",
                    text2: " Cup of green tea",
                    text3: " 3 cups of popcorn ",
                  ),
                  Custom(
                    color: Color.fromRGBO(255, 201, 203, .8),
                    text: "  Dinner ",
                    text1: "Steak with sweet  ",
                    text2: "potato and broccoli",
                    text3: "Salmon with avocado ",
                    text4: "and quinoa",
                    text5: "Pasta with meat sauce",
                    text6: "and mixed vegetables",
                  )
                ],
              ),
            ),
            const Custom1(text: "1500 Calories System "),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: const [
                  Custom(
                    color: Color.fromRGBO(199, 238, 255, .8),
                    text: "Breakfast ",
                    text1: "Peanut butter and ",
                    text2: " banana smoothie with  ",
                    text4: "Scrambled eggs with ",
                    text5: "spinach, mushrooms ",
                    text6: "and whole-grain toast",
                    text7: "Cottage cheese",
                    text3: "whole-grain toast",
                  ),
                  Custom(
                    color: Color.fromRGBO(228, 208, 238, .8),
                    text: "Snack1 ",
                    text1: " Greek yogurt with  ",
                    text2: " fruit and granola",
                    text3: "Cheese and fruit plate",
                  ),
                  Custom(
                    color: Color.fromRGBO(255, 198, 230, .8),
                    text: "Lunch ",
                    text1: " Grilled chicken with   ",
                    text2: "  mixed greens salad ",
                    text3: "  Turkey and cheese",
                    text4: " sandwich with baby",
                    text5: "carrots",
                    text6: "Tuna salad with mixed ",
                    text7: " greens and crackers  ",
                  ),
                  Custom(
                    color: Color.fromRGBO(199, 246, 209, .8),
                    text: "  Snack2 ",
                    text1: "  Smoothie made with ",
                    text2: "butter",
                    text3: " low-fat milk, peanut ",
                    text4: " , and banana ",
                  ),
                  Custom(
                    color: Color.fromRGBO(255, 201, 203, .8),
                    text: "  Dinner ",
                    text1: "Grilled shrimp with ",
                    text2: "roasted vegetables ",
                    text3: " Grilled chicken with",
                    text4: "sweet potato  ",
                    text5: "Baked salmon with ",
                    text6: "mixed greens salad ",
                    text7: "and brown rice",
                  )
                ],
              ),
            ),
            const Custom1(text: "1600 Calories System"),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: const [
                  Custom(
                    color: Color.fromRGBO(199, 238, 255, .8),
                    text: "Breakfast ",
                    text1: "Smoothie made with  ",
                    text2: " banana, peanut butter",
                    text3: " and low-fat milk",
                    text5: "veggies and toast ",
                    text6: "Greek yogurt with ",
                    text7: "granola and berries ",
                    text4: "Scrambled eggs with",
                  ),
                  Custom(
                    color: Color.fromRGBO(228, 208, 238, .8),
                    text: "Snack1 ",
                    text1: " Apple slices with",
                    text2: " almond butter ",
                    text3: "Hummus and carrot",
                    text4: "sticks",
                  ),
                  Custom(
                    color: Color.fromRGBO(255, 198, 230, .8),
                    text: "Lunch ",
                    text1: "  Grilled cheese ",
                    text2: "with tomato soup ",
                    text3: "Tuna salad with ",
                    text4: "whole-grain crackers ",
                    text5: "Grilled chicken with ",
                    text6: "mixed greens salad ",
                  ),
                  Custom(
                    color: Color.fromRGBO(199, 246, 209, .8),
                    text: "  Snack2 ",
                    text1: " Trail mix with nuts  ",
                    text3: " Protein bars ",
                    text4: " Cup of green tea",
                    text2: " and dried fruit",
                  ),
                  Custom(
                    color: Color.fromRGBO(255, 201, 203, .8),
                    text: "  Dinner ",
                    text1: " Chicken fajitas with  ",
                    text3: " and mixed veggies",
                    text2: "  whole-grain tortillas ",
                    text4: "Beef and broccoli ",
                    text5: "stir-fry with brown ",
                    text6: "rice",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Custom1 extends StatelessWidget {
  final String text;

  const Custom1({super.key, required this.text});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      child: Text(
        text,
        style: Theme.of(context).textTheme.displayLarge,
      ),
    );
  }
}
