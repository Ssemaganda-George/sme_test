import 'package:flutter/cupertino.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter/material.dart';

class Centerid {
  String name;
  String address;
  LatLng locationCoords;
  Widget image;
  String no;

  Centerid({
    required this.name,
    required this.address,
    required this.locationCoords,
    required this.image,
    required this.no,
  });
}

final List<Centerid> centerNames = [
  Centerid(
    address: 'Kampala Center',
    name: 'Kampala_FoodBank',
    no: '0712345678',
    locationCoords: LatLng(0.3136, 32.5811),
    image: Image.asset('assets/images/ce2.jpg'),
  ),
  Centerid(
    address: 'Entebbe Center',
    name: 'Entebbe_FoodBank',
    no: '0789123456',
    locationCoords: LatLng(0.0644, 32.4464),
    image: Image.asset('assets/images/ce9.png', width: 70.0, height: 120.0),
  ),
  Centerid(
    address: 'Jinja Center',
    name: 'Jinja_FoodBank',
    no: '0756789012',
    locationCoords: LatLng(0.4321, 33.2033),
    image: Image.asset('assets/images/ce10.jpg', width: 80.0),
  ),
  Centerid(
    address: 'Gulu Center',
    name: 'Gulu_FoodBank',
    no: '0778901234',
    locationCoords: LatLng(2.7746, 32.2903),
    image: Image.asset('assets/images/ce4.jpg', width: 80.0),
  ),
  Centerid(
    address: 'Mbarara Center',
    name: 'Mbarara_FoodBank',
    no: '0790123456',
    locationCoords: LatLng(-0.6086, 30.6476),
    image: Image.asset('assets/images/ce6.png', width: 80.0),
  ),
];
