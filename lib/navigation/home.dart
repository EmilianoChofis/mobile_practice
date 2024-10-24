import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating/flutter_rating.dart';
import 'package:mobile_practice/entities/restaurant.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final db = FirebaseFirestore.instance;
  List<Restaurant> restaurants = [];
  late bool isLoading = true;
  @override
  void initState() {
    print('d');
    super.initState();

    (() async => {
          await db.collection("restaurantes").get().then((event) {
            for (var doc in event.docs) {
              final restaurant = Restaurant(
                  doc.data()['name'],
                  doc.data()['description'],
                  doc.data()['images'],
                  doc.data()['count'],
                  doc.data()['rating']);
              restaurants.add(restaurant);
              print("hola ${doc.id} => ${doc.data()}");
            }
            if (mounted) {
              setState(() => isLoading = false);
            }
          })
        });
  }

  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      return const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      );
    }
    return Scaffold(
      appBar: AppBar(
        title: const Text("Inicio"),
        backgroundColor: Colors.blue,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {
          Navigator.pushNamed(context, '/reservations'),
        },
        child: const Icon(Icons.chevron_right),
      ),
      body: Row(children: [
        Column(
          children: <Widget>[
            const Text("Inicio"),
            ElevatedButton(
                onPressed: () => {
                      //Navigator.pushNamed(context, '/profile'),
                    },
                child: const Text("Perfil")),
          ],
        ),
        Image.network(
          restaurants[0].images[0],
          height: 150,
          width: 150,
        ),
        const SizedBox(
          width: 8,
        ),
        Column(
          children: [
            Text(
              restaurants[0].name,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(restaurants[0].description)
          ],
        ),
        const Spacer(),
        StarRating(
          rating: restaurants[0].rating,
        )
      ]),
    );
  }
}
