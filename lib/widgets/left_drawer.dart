import 'package:flutter/material.dart';
import 'package:wahyus_shop/screens/menu.dart';
import 'package:wahyus_shop/screens/shoplist_form.dart';
import 'package:wahyus_shop/screens/list_product.dart';



class LeftDrawer extends StatelessWidget {
  const LeftDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
            color: Colors.indigo,
          ),
          child: Column(
            children: [
              Text(
                'Wahyus Shop',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Padding(padding: EdgeInsets.all(10)),
              Text("Catat seluruh keperluan belanjamu di sini!",
                textAlign: TextAlign.center, // Center alignment
                style: TextStyle(
                fontSize: 15, // Font size 15
                color: Colors.white, // Text color white
                fontWeight: FontWeight.normal, // Weight biasa (normal)
                  ),
              ),
            ],
          ),
          ),
          ListTile(
            leading: const Icon(Icons.home_outlined),
            title: const Text('Halaman Utama'),
            // Bagian redirection ke MyHomePage
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyHomePage(),
                  ));
            },
          ),
          ListTile(
            leading: const Icon(Icons.add_shopping_cart),
            title: const Text('Tambah Produk'),
            // Bagian redirection ke ShopFormPage
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ShopFormPage(), // Gantilah dengan nama halaman yang sesuai
      ),
    );
            },
          ),
          ListTile(
            leading: const Icon(Icons.checklist),
            title: const Text('Lihat Item'),
            // Bagian redirection ke ItemFormPage
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ProductPage(),
                  ));
            },
          ),
          // Kode ListTile Menu
          ListTile(
              leading: const Icon(Icons.shopping_basket),
              title: const Text('Daftar Produk'),
              onTap: () {
                  // Route menu ke halaman produk
                  Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ProductPage()),
                  );
              },
          ),
        ],
      ),
    );
  }
}