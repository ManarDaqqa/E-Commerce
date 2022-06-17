import 'package:flutter/material.dart';

class Product {
  final int id;
  final String title, description;
  final List<String> images;
  final List<Color> colors;
  final double rating, price;
  final bool isFavourite, isPopular;

  Product({
    required this.id,
    required this.images,
    required this.colors,
    this.rating = 0.0,
    this.isFavourite = false,
    this.isPopular = false,
    required this.title,
    required this.price,
    required this.description,
  });
}

// Our demo Products

List<Product> demoProducts = [
  Product(
    id: 1,
    images: [
      "assets/images/castrol.png",
      "assets/images/castrol-edge5w30.png",
      "assets/images/castrol-edge-m5w30.png",
      "assets/images/EcPO_6AVcAAdnvG.jpg"
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Castrol EDGE5W-30",
    price: 64.99,
    description: 'Castrol EDGE, an advanced full synthetic 5W-30 motor oil, is Castrols strongest oil and a great option for those who want the very best for their car.Castrol GTX MAGNATEC is a premium full synthetic 5W-30 that offers superior wear protection.If your car has over 75,000 miles on the odometer, Castrol GTX High Mileage 5W-30 can help protect your emission system while helping to extend the life of your engine.Castrol GTX Ultraclean 5W-30 Double-Action formula has been engineered to clean away old sludge while preventing new sludge formation. No oil keeps engines cleaner.',
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 2,
    images: [
      "assets/images/mannol15W-40.png",
      "assets/images/mannol-m15W-40.png"
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "MANNOL Oil",
    price: 50.5,
    description: description,
    rating: 4.1,
    isPopular: true,
  ),
  Product(
    id: 3,
    images: [
      "assets/images/zic15-40-2.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "ZIC 15W-40",
    price: 36.55,
    description: 'ZIC X5000 15W-40/CH-4 is a multi-purpose premium quality multi-grade engine oil of API CH-4/SJ performance, designed to provide excellent oxidation stability and engine protection\nSize :4Litre\nSpecific Gravity 15°C	:0.87\nViscosity Index:146\nFlash Point, °C:226\nPour point, °C:-35.0\nTotal Base Number:10.0',
    rating: 4.1,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 4,
    images: [
      "assets/images/LUKoil.png",
      "assets/images/LUKoil-m.png",
      "assets/images/LUKoil-b.png"
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "LUK Oil",
    price: 20.20,
    description: description,
    rating: 4.1,
    isFavourite: true,
  ),
];

const String description =
    "Wireless Controller for PS4™ gives you what you want in your gaming from over precision control your games to sharing …";
