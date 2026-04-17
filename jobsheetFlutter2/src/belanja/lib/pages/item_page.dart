import 'package:flutter/material.dart';
import '../models/item.dart';

class ItemPage extends StatelessWidget {
  final Item itemArgs;

  const ItemPage({super.key, required this.itemArgs});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text(itemArgs.name),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Hero(
              tag: itemArgs.name,
              child: Image.asset(itemArgs.imageUrl, width: double.infinity, fit: BoxFit.cover),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(itemArgs.name, style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 8),
                  Text('Price: Rp ${itemArgs.price}', style: const TextStyle(fontSize: 18, color: Colors.green)),
                  const SizedBox(height: 8),
                  Text('Remaining Stock: ${itemArgs.stock}'),
                  Row(
                    children: [
                      const Icon(Icons.star, color: Colors.orange),
                      Text('${itemArgs.rating} / 5.0'),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}