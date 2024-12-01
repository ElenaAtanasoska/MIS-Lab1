import 'package:flutter/material.dart';

class DetailPrice extends StatelessWidget {
  final double price;

  const DetailPrice({super.key, required this.price});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Text(
        "\$${price.toStringAsFixed(2)}", // Formats the price to 2 decimal places
        style: const TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Colors.green, // You can customize the color to match your design
        ),
      ),
    );
  }
}
