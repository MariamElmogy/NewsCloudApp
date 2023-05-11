import 'package:flutter/material.dart';

class CategoryNewsItem extends StatelessWidget {
  const CategoryNewsItem({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: SizedBox(
          // height: MediaQuery.of(context).size.height * .2,
          child: AspectRatio(
            aspectRatio: 250 / 160,
            child: Stack(
              children: [
                Positioned.fill(
                    child: Image.asset(
                  categoryNewsImageData[index],
                  fit: BoxFit.fill,
                )),
                Center(
                  child: Text(
                    categoryNewsData[index],
                    style: const TextStyle(
                        fontSize: 28,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

List<String> categoryNewsImageData = [
  'assets/images/general.jpg',
  'assets/images/technology.jpg',
  'assets/images/sports.jpg',
  'assets/images/business.jpg',
  'assets/images/entertainment.jpg',
  'assets/images/health.jpg',
  'assets/images/science.jpg',
];

List<String> categoryNewsData = [
  'General',
  'Technology',
  'Sports',
  'Business',
  'Entertainment',
  'Health',
  'Science',
];

var category = "General";
