import 'package:flutter/material.dart';

class Coin {
  Coin({
    required this.name,
    required this.symbol,
    required this.imageUrl,
    required this.change,
    required this.changePercentage,
    required this.price,
  });
  String name;
  String symbol;
  String imageUrl;
  num price;
  num change;
  num changePercentage;

  factory Coin.fromJson(Map<String, dynamic> json) {
    return Coin(
        name: json['name'],
        symbol: json['symbol'],
        imageUrl: json['image'],
        change: json['price_change_24h'],
        changePercentage: json['price_change_percentage_24h'],
        price: json['current_price']);
  }
}

List<Coin> coinList = [];
