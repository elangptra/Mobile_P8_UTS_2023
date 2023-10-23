import 'package:flutter/material.dart';
import 'package:belanja/models/item.dart';
import 'package:belanja/pages/item_page.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<Item> items = [
    Item(
        name: 'Sugar',
        price: 5000,
        img: 'images/gula.jpg',
        stok: 4,
        rating: 4.5),
    Item(
        name: 'Salt',
        price: 2000,
        img: 'images/garam.jpg',
        stok: 5,
        rating: 4.7),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        ItemPage.routeName: (context) => const ItemPage(),
      },
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: const Text('Shopping List'),
        ),
        body: Container(
          margin: const EdgeInsets.all(8),
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, childAspectRatio: 0.7),
            padding: const EdgeInsets.all(8),
            itemCount: items.length,
            itemBuilder: (context, index) {
              final item = items[index];
              return InkWell(
                onTap: () {
                  Navigator.pushNamed(context, ItemPage.routeName,
                      arguments: item);
                },
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(
                        8), // Tambahkan padding pada keseluruhan Card
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Hero(
                          tag: 'productImage${item.name}',
                          child: AspectRatio(
                            aspectRatio:
                                1, // Rasio lebar-tinggi 1:1 untuk ukuran yang sama
                            child: Image.asset(item.img, fit: BoxFit.cover),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment
                              .spaceBetween, // Agar rating berada di sebelah kanan
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 8), // Padding di atas teks "name"
                              child: Text(
                                item.name,
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                const Icon(Icons.star, color: Colors.amber),
                                Text(
                                  item.rating.toString(),
                                  style: const TextStyle(
                                    color: Colors.amber,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: Text(
                            'Rp. ${item.price}',
                            style: const TextStyle(
                              color: Colors.deepOrange,
                              fontSize: 14,
                            ),
                          ),
                        ),
                        Text(
                          'Stok: ${item.stok}',
                          style: const TextStyle(
                            color: Colors.grey,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          child: Container(
            padding: const EdgeInsets.all(16),
            decoration: const BoxDecoration(
              color: Colors.orange,
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Nama: Elang Putra Adam',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                Text(
                  'NIM: 2141720074',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
