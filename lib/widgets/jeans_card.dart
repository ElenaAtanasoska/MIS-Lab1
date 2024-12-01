
import 'package:flutter/material.dart';
import 'package:mis/models/item_model.dart';

import 'jeans_card_data.dart';

class JeansCard extends StatelessWidget{
  final int id;
  final String name;
  final double price;
  final String image;


  const JeansCard({super.key, required this.id, required this.name, required this.image, required this.price});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: InkWell(
        borderRadius: BorderRadius.circular(7),
        enableFeedback: true,
        splashColor: Colors.red[50],
        onTap: () => {
          Navigator.pushNamed(context, "/details", arguments: Item(id: id, name: name, img: image, price: price))
        },
        child: Container(
          margin: const EdgeInsets.all(5.0),
          padding: const EdgeInsets.all(5.0),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.red.withOpacity(0.8), width: 2),
              borderRadius: BorderRadius.circular(10)
          ),
          child: JeansCardData(image: image, name: name, price: price,),
        ),
      ),
    );
  }

}