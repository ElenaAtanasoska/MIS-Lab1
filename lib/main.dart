import 'package:flutter/material.dart';
import 'package:mis/screens/details.dart';
import 'package:mis/screens/home.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Clothing Store',
      theme: ThemeData(primarySwatch: Colors.red),
      initialRoute: "/",
      routes: {
        "/": (context) => const Home(),
        "/details": (context) => const Details(),
      },
    );
  }
}



// class ClothingList extends StatelessWidget {
//   final List<Map<String, String>> clothingItems = [
//     {'name': 'T-shirt', 'image': 'assets/tshirt.jpg', 'price': '\$15.00'},
//     {'name': 'Jeans', 'image': 'assets/jeans.jpg', 'price': '\$30.00'},
//     {'name': 'Jacket', 'image': 'assets/jacket.jpg', 'price': '\$50.00'},
//     {'name': 'Shoes', 'image': 'assets/shoes.jpg', 'price': '\$40.00'},
//     // Add more items here
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return GridView.builder(
//       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//         crossAxisCount: 2, // Number of columns
//         crossAxisSpacing: 10.0,
//         mainAxisSpacing: 10.0,
//         childAspectRatio: 0.8, // Card aspect ratio
//       ),
//       itemCount: clothingItems.length,
//       itemBuilder: (context, index) {
//         return ClothingCard(
//           name: clothingItems[index]['name']!,
//           image: clothingItems[index]['image']!,
//           price: clothingItems[index]['price']!,
//           onTap: () {
//             // Navigate to the detail screen
//             Navigator.push(
//               context,
//               MaterialPageRoute(
//                 builder: (context) => ProductDetailScreen(
//                   name: clothingItems[index]['name']!,
//                   image: clothingItems[index]['image']!,
//                   price: clothingItems[index]['price']!,
//                 ),
//               ),
//             );
//           },
//         );
//       },
//     );
//   }
// }
//
// class ClothingCard extends StatelessWidget {
//   final String name;
//   final String image;
//   final String price;
//   final VoidCallback onTap;
//
//   const ClothingCard({
//     required this.name,
//     required this.image,
//     required this.price,
//     required this.onTap,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: onTap,
//       child: Card(
//         elevation: 5,
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(10),
//         ),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             Image.asset(image, fit: BoxFit.cover, height: 150),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Text(
//                 name,
//                 style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Text(
//                 price,
//                 style: TextStyle(fontSize: 16, color: Colors.green),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
//
// class ProductDetailScreen extends StatelessWidget {
//   final String name;
//   final String image;
//   final String price;
//
//   const ProductDetailScreen({
//     required this.name,
//     required this.image,
//     required this.price,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(name),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           children: [
//             Image.asset(image, fit: BoxFit.cover, height: 250),
//             SizedBox(height: 20),
//             Text(
//               name,
//               style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
//             ),
//             SizedBox(height: 10),
//             Text(
//               price,
//               style: TextStyle(fontSize: 22, color: Colors.green),
//             ),
//             SizedBox(height: 20),
//             Text(
//               'Product description goes here...',
//               style: TextStyle(fontSize: 18),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }


// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});
//
//   // This widget is the home page of your application. It is stateful, meaning
//   // that it has a State object (defined below) that contains fields that affect
//   // how it looks.
//
//   // This class is the configuration for the state. It holds the values (in this
//   // case the title) provided by the parent (in this case the App widget) and
//   // used by the build method of the State. Fields in a Widget subclass are
//   // always marked "final".
//
//   final String title;
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;
//
//   void _incrementCounter() {
//     setState(() {
//       // This call to setState tells the Flutter framework that something has
//       // changed in this State, which causes it to rerun the build method below
//       // so that the display can reflect the updated values. If we changed
//       // _counter without calling setState(), then the build method would not be
//       // called again, and so nothing would appear to happen.
//       _counter++;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     // This method is rerun every time setState is called, for instance as done
//     // by the _incrementCounter method above.
//     //
//     // The Flutter framework has been optimized to make rerunning build methods
//     // fast, so that you can just rebuild anything that needs updating rather
//     // than having to individually change instances of widgets.
//     return Scaffold(
//       appBar: AppBar(
//         // TRY THIS: Try changing the color here to a specific color (to
//         // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
//         // change color while the other colors stay the same.
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         // Here we take the value from the MyHomePage object that was created by
//         // the App.build method, and use it to set our appbar title.
//         title: Text(widget.title),
//       ),
//       body: Center(
//         // Center is a layout widget. It takes a single child and positions it
//         // in the middle of the parent.
//         child: Column(
//           // Column is also a layout widget. It takes a list of children and
//           // arranges them vertically. By default, it sizes itself to fit its
//           // children horizontally, and tries to be as tall as its parent.
//           //
//           // Column has various properties to control how it sizes itself and
//           // how it positions its children. Here we use mainAxisAlignment to
//           // center the children vertically; the main axis here is the vertical
//           // axis because Columns are vertical (the cross axis would be
//           // horizontal).
//           //
//           // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
//           // action in the IDE, or press "p" in the console), to see the
//           // wireframe for each widget.
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headlineMedium,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }
