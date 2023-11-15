import 'package:wahyus_shop/screens/shoplist_form.dart';
import 'package:wahyus_shop/screens/lihat_produk.dart';
import 'package:flutter/material.dart';


class Item {
  String name = "";
  int amount = 0;
  String description = "";
  int price = 0;

  Item(this.name, this.amount, this.description, this.price);
}

class ShopItem {
  final String name;
  final IconData icon;
  final Color backgroundColor; 

  ShopItem(this.name, this.icon, this.backgroundColor);
}

List<Item>itemList = [];

class ShopCard extends StatelessWidget {
  final ShopItem item;

  const ShopCard(this.item, {super.key}); // Constructor

  @override
  Widget build(BuildContext context) {
    return Material(
      color: item.backgroundColor, // Menggunakan warna latar belakang dari item
      child: InkWell(
        // Area responsive terhadap sentuhan
        onTap: () {
          // Memunculkan SnackBar ketika diklik
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(SnackBar(
                content: Text("Kamu telah menekan tombol ${item.name}!")));

                // Navigate ke route yang sesuai (tergantung jenis tombol)
            if (item.name == "Tambah Produk") {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ShopFormPage(), 
                ),
              );
            }

            // Navigate ke route yang sesuai (tergantung jenis tombol)
            if (item.name == "Lihat Produk") {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ItemListPage(), 
                ),
              );
            }
        },
        child: Container(
          // Container untuk menyimpan Icon dan Text
          padding: const EdgeInsets.all(8),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  item.icon,
                  color: Colors.white,
                  size: 30.0,
                ),
                const Padding(padding: EdgeInsets.all(3)),
                Text(
                  item.name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}