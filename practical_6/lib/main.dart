import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.green[500],
      ),
      home: GoogleMapsPage(),
    );
  }
}

class GoogleMapsPage extends StatefulWidget {
  @override
  _GoogleMapsPageState createState() => _GoogleMapsPageState();
}

class _GoogleMapsPageState extends State<GoogleMapsPage> {
  final MapController _mapController = MapController();
    
  final LatLng _center = const LatLng(22.29301284148933, 73.12225873737414);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navrachana University'),
        elevation: 2,
      ),
    body: GoogleMap(
      initialCameraPosition: CameraPosition(target: _center, zoom: 8.0),
      onMapCreated: (controller) {
        setState(() {
        mapController = controller;
      });
    },
  ),
    );
  }
}