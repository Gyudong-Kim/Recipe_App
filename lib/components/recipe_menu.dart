import 'package:flutter/material.dart';

class RecipeMenu extends StatelessWidget {
  const RecipeMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(left: 20),
        padding: const EdgeInsets.only(top: 20),
        child: Row(
          children: [
            _menuItem(Icons.food_bank, 'All'),
            _spacer(),
            _menuItem(Icons.emoji_food_beverage, 'Coffee'),
            _spacer(),
            _menuItem(Icons.fastfood, 'Burger'),
            _spacer(),
            _menuItem(Icons.local_pizza, 'Pizza'),
          ],
        ));
  }
}

Widget _menuItem(IconData icon, String label) {
  return Container(
    width: 60,
    height: 80,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(30),
      border: Border.all(color: Colors.black12),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: Colors.redAccent,
          size: 30,
        ),
        const SizedBox(height: 5),
        Text(
          label,
          style: const TextStyle(color: Colors.black87),
        ),
      ],
    ),
  );
}

Widget _spacer() {
  return const SizedBox(width: 25);
}
