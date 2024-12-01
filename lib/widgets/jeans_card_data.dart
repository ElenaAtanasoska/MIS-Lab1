import 'package:flutter/material.dart';

class JeansCardData extends StatelessWidget {
  final String image;
  final String name;
  final double price;

  const JeansCardData({super.key, required this.name, required this.image, required this.price});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: Image.network(image, fit: BoxFit.contain, alignment: Alignment.bottomRight)),
        const Divider(),
        Text("${name[0].toUpperCase()}${name.substring(1)}",
          style: const TextStyle(fontSize: 21, color: Colors.black87),
        ),
      ],
    );
  }
}