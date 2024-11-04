import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_rating/flutter_rating.dart';
import 'package:mobile_practice/utils/get_location.dart';

class DetailRestaurant extends StatelessWidget {
  final dynamic restaurant;

  const DetailRestaurant({super.key, this.restaurant});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(restaurant.name),
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  restaurant.name,
                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                ),
                const Spacer(),
                StarRating(
                  rating: restaurant.rating,
                ),
              ],
            ),
            const SizedBox(height: 4),
            Text(restaurant.description),
            const SizedBox(height: 16),
            CarouselSlider(
              options: CarouselOptions(
                height: 200.0,
                autoPlay: true,
                enlargeCenterPage: true,
                aspectRatio: 16 / 9,
                autoPlayInterval: const Duration(seconds: 3),
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
                viewportFraction: 0.8,
              ),
              items: restaurant.images.map<Widget>((url) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: const BoxDecoration(
                        color: Colors.amber,
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(
                          url,
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                );
              }).toList(),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: MapSample(
                latitude: restaurant.latitude,
                longitude: restaurant.longitude,
              ),
            ),
          ],
        ),
      ),
    );
  }
}