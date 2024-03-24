import 'package:flutter/material.dart';

class RecipeListItem extends StatelessWidget {
  final String title;
  final String image;

  const RecipeListItem({
    super.key,
    required this.title,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AspectRatio(
            aspectRatio: 2 / 1,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                "assets/images/$image.jpeg",
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 5),
          Text(
            title,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "Have you ever made your own $title? Once you've tried a homemade $title, you'll never go back.",
            style: const TextStyle(
              color: Colors.grey,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
