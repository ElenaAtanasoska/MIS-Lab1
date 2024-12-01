
import 'package:flutter/material.dart';
import 'package:mis/models/item_model.dart';

import '../widgets/jeans_grid.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //List<Item> item = List.generate(5, (index) =>
  //Item(id: index, name: "Jeans $index", price: 15.22, img:  'https://found.store/cdn/shop/files/baggy-jeans-blue-lacy-found-2-1.jpg?v=1714676802&width=2880'));

  final List<Item> item = List.generate(5, (index) {
    final names = ["T-Shirt", "Jeans", "Jacket", "Shoes", "Hat"];
    final images = [
      "https://i5.walmartimages.com/seo/White-Tshirt-for-Men-Gildan-2000-Men-T-Shirt-Cotton-Men-Shirt-Original-Men-s-Shirts-Best-Mens-Classic-Short-Sleeve-Tee_c9ecef4f-8e1e-4f24-8786-e88f1846255c.a79d87519fef1e4e9d626ff3b446742c.jpeg",
      "https://found.store/cdn/shop/files/baggy-jeans-blue-lacy-found-2-1.jpg?v=1714676802&width=2880",
      "https://m.media-amazon.com/images/I/81ABY-P5wWL._AC_UY1000_.jpg",
      "https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/489b06f3-42b4-45a2-aa75-4cfb16ac2e71/NIKE+COURT+VISION+LO+NN.png",
      "https://api.houdinisportswear.com/_images/b7d21e43-5d54-4077-9742-a6f9105d185f/Acc-Hut-Hat_True-Black_378674_900_FLAT.jpg?width=1920&quality=90",
    ];
    final prices = [15.99, 25.50, 40.00, 60.75, 10.20];

    return Item(
      id: index,
      name: names[index],
      img: images[index],
      price: prices[index],
    );
  });

  // @override
  // void initState() {
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.redAccent[100],
        leading: IconButton(onPressed: () {} ,
          icon: const Icon(Icons.menu, color:Colors.white, size: 24,)),
        title: const Text("JClothing Shop", style: TextStyle(color: Colors.white, fontSize: 32, fontWeight: FontWeight.bold)),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {},
              icon: const Icon(Icons.settings, color: Colors.white, size: 24))
        ],
      ),
      body: JeansGrid(item: item),
      floatingActionButton: FloatingActionButton(
          onPressed: () {},
          tooltip: 'Share',
          child: const Icon(Icons.share_rounded),
      ),
    );
  }
}