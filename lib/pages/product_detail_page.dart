import 'package:flutter/material.dart';
import 'package:pertemuan10_2306053/models/product_model.dart';
import 'dart:convert';
class ProductDetailPage extends StatelessWidget {
  // mebuat variabel untuk menampilkan data produk
  final ProductModel product;
  
  const ProductDetailPage({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Produk",
        style: TextStyle(
          color: Color.fromARGB(255, 255, 255, 255),
          fontWeight: FontWeight.bold,),
        ),
        backgroundColor: const Color.fromARGB(255, 135, 13, 5),
        leading: IconButton(
          icon: const Icon(
            Icons.chevron_left,
            color: Color.fromARGB(255, 255, 255, 255),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            product.image.isNotEmpty
              ? Image.memory(
                base64Decode(product.image),
                width: double.infinity,
                height: 400,
                fit: .cover,
            ) : const Icon(Icons.image, size:400),
            Text(
              product.name, 
              style: TextStyle(
                fontSize: 24, 
                fontWeight: FontWeight.bold)
            ),
            SizedBox(height: 10),
            Text("Rp ${product.price}"),
            SizedBox(height: 10),
            Text(product.description),
          ]
        ),
      ),
    );
  }
}
