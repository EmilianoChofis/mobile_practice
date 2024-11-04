import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating/flutter_rating.dart';
import 'package:mobile_practice/entities/restaurant.dart';
import 'package:mobile_practice/widgets/list_restaurant_data.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final db = FirebaseFirestore.instance;
  List<Restaurant> restaurantes = [];
  late bool isLoading = true;
  @override
  void initState() {
    super.initState();
    // Llama a la función asíncrona que carga los datos
    _fetchData();
  }

  // Función asíncrona para cargar datos de Firestore
  Future<void> _fetchData() async {
    try {
      final event = await db.collection("restaurantes").get();
      for (var doc in event.docs) {
        final restaurant = Restaurant(
          doc.data()['name'],
          doc.data()['descripcion'],
          doc.data()['images'],
          doc.data()['count'],
          doc.data()['rating'],
          doc.data()['latitude'],
          doc.data()['longitude']
        );
        restaurantes.add(restaurant);
      }
      if (mounted) {
        setState(() => isLoading = false);
      }
    } catch (e) {
      print("Error al cargar datos: $e");
    }

  }

  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      return const Scaffold(
        body: Center(child: CircularProgressIndicator()),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("Inicio"),
        backgroundColor: Colors.blue,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {
          Navigator.pushNamed(context, '/top'),
        },
        child: const Icon(Icons.chevron_right),
      ),
      body: ListView.separated(
          padding: const EdgeInsets.all(8),
          itemCount: restaurantes.length,
          itemBuilder: (BuildContext context, int index) {
            return ListRestaurantData(restaurant: restaurantes[index]);
          },
        separatorBuilder: (BuildContext context, int index) => const Divider(),
      ),
    );
  }
}
