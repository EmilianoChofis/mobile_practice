import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapSample extends StatefulWidget {
  final double latitude;
  final double longitude;

  const MapSample({super.key, required this.latitude, required this.longitude});

  @override
  State<MapSample> createState() => MapSampleState();
}

class MapSampleState extends State<MapSample> {
  final Completer<GoogleMapController> _controller = Completer<GoogleMapController>();
  CameraPosition? _initialPosition;
  final Set<Marker> _markers = {};

  @override
  void initState() {
    super.initState();
    _initialPosition = CameraPosition(
      target: LatLng(widget.latitude, widget.longitude),
      zoom: 14.4746,
    );
    _markers.add(
      Marker(
        markerId: const MarkerId("restaurantLocation"),
        position: LatLng(widget.latitude, widget.longitude),
        infoWindow: const InfoWindow(title: 'Restaurant Location'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        mapType: MapType.hybrid,
        initialCameraPosition: _initialPosition!,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
        markers: _markers,
      ),
    );
  }
}