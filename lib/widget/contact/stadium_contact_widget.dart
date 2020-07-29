import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class StadiumContactWidget extends StatefulWidget {
  State<StadiumContactWidget> createState() => StadiumContactStatus();
}

class StadiumContactStatus extends State<StadiumContactWidget> {
  Completer<GoogleMapController> _controller = Completer();

  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(28.0017408, -15.4042811),
    zoom: 17.9,
  );

  static Marker _stadiumMarker;

  static Set<Marker> _setMarkers;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _stadiumMarker = Marker(
        markerId: MarkerId("stadium"),
        position: LatLng(28.0017408, -15.4042811),
        infoWindow: InfoWindow(
            title: "Anexo Campo de fútbol Paco Hernandez",
            snippet: "Calle Hornillo, 18, 35213 Telde, Las Palmas"));

    _setMarkers = Set()..add(_stadiumMarker);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: MediaQuery.of(context).size.width, // or use fixed size like 200
        height: MediaQuery.of(context).size.height / 4,
        child: GoogleMap(
          initialCameraPosition: _kGooglePlex,
          onMapCreated: (GoogleMapController controller) {
            _controller.complete(controller);
          },
          markers: _setMarkers,
          myLocationButtonEnabled: false,
          zoomControlsEnabled: true,
          zoomGesturesEnabled: true,
        ));
  }
}
