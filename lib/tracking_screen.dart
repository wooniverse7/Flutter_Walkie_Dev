import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'dart:async';



class trackingScreen extends StatelessWidget {

  //구글맵에 대한 Completer 컨트롤러
  //Completer<GoogleMapController> _controller = Completer();
  //CameraPosition의 타겟으로 위도,경도 설정
  final CameraPosition _initialPosition = CameraPosition(
      target: LatLng(37.450244, 126.653499)
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        initialCameraPosition: _initialPosition,
        mapType: MapType.normal,
      ),
    );
  }
}
