import 'package:flutter/material.dart';
import 'package:flutter_rating/flutter_rating.dart';
import 'package:mobile_practice/entities/restaurant.dart';

class ListRestaurantData extends StatelessWidget {
  final Restaurant restaurant;

  const ListRestaurantData({super.key, required this.restaurant});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.network(
          restaurant.images[0],
          width: 75,
          height: 75,
        ),
        const SizedBox(width: 10),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                restaurant.name,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                width: 120,
                height: 50,
                child: Text(
                  restaurant.description,
                ),
              ),
            ],
          ),
        ),
        StarRating(
          rating: restaurant.rating,
        ),
      ],
    );
  }
}
