import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Bank {
  String name;
  String address;
  LatLng locationCoords;
  Widget image;
  String no;

  Bank({
    required this.name,
    required this.address,
    required this.locationCoords,
    required this.image,
    required this.no,
  });
}

final List<Bank> centerNames = [
  Bank(
    address: 'Mulago',
    name: 'UBTH_Kampala',
    no: '7812345678',
    locationCoords: LatLng(0.313611, 32.581111), // Change to actual coordinates
    image: Image(
      image: AssetImage('assets/images/b1.jpg'),
      width: 80.0,
    ),
  ),
  Bank(
    address: 'HealthPine',
    name: 'UBTH_Jinja',
    no: '6789123478',
    locationCoords: LatLng(0.424444, 33.204167), // Change to actual coordinates
    image: Image(
      image: AssetImage('assets/images/b7.png'),
      fit: BoxFit.cover,
      width: 80.0,
    ),
  ),
  Bank(
    address: 'LancetLabs',
    name: 'UBTH_Mbarara',
    no: '9012345678',
    locationCoords:
        LatLng(-0.599722, 30.648611), // Change to actual coordinates
    image: Image(
      image: AssetImage('assets/images/b3.jpg'),
      width: 80.0,
      height: 160.0,
    ),
  ),
  // Add more hospitals with their information here
];
