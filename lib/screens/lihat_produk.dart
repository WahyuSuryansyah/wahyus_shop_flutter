import 'package:flutter/material.dart';
import 'package:wahyus_shop/widgets/left_drawer.dart';
import 'package:wahyus_shop/widgets/shop_card.dart';

class ItemListPage extends StatefulWidget {
  const ItemListPage({super.key});
  @override
  State<ItemListPage> createState() => _ItemListPageState();
}

class _ItemListPageState extends State<ItemListPage> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'List Item Anda',
          ),
        ),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),
      drawer: const LeftDrawer(),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListView.builder(
                shrinkWrap: true,
                itemCount: itemList.length,
                itemBuilder: (BuildContext context, int idx) {
                  return ListTile(
                      title: Text(
                        "${idx + 1}. ${itemList[idx].name}",
                        textAlign: TextAlign.left,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Container(
                        margin: const EdgeInsets.only(left: 22.0),
                        child: Text(
                          "Jumlah: ${itemList[idx].amount}\nharga: ${itemList[idx].price}\n\nDeskripsi: ${itemList[idx].description}\n",
                          textAlign: TextAlign.left,
                        ),
                      ));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}