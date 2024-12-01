import 'package:flutter/material.dart';
import 'package:mis/models/item_model.dart';

import 'jeans_card.dart';

class JeansGrid extends StatefulWidget {

  final List<Item> item;

  const JeansGrid({super.key, required this.item});

  @override
  _JeansGridState createState() => _JeansGridState();
}

class _JeansGridState extends State<JeansGrid> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return GridView.count(
      padding: const EdgeInsets.all(6),
      crossAxisCount: 2,
      crossAxisSpacing: 4,
      mainAxisSpacing: 4,
      semanticChildCount: 250,
      childAspectRatio: 200 / 244,
      physics: const BouncingScrollPhysics(),
      children: widget.item.map((item) =>
          JeansCard(id: item.id, name: item.name, image: item.img, price: item.price,),
      ).toList(),
    );
  }
}