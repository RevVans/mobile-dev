import 'package:flutter/material.dart';

import '../models/catalog_item.dart';
import './detail_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  final List<CatalogItem> items = const [
    CatalogItem(
      id: '1',
      title: 'Mechanical Keyboard',
      category: 'Peripherals',
      price: 'Rp820.000',
      description: '75% mechanical keyboard with hot-swappable tactile switches and PBT keycaps. ',
    ),
    CatalogItem(
      id: '2',
      title: 'In Ear Monitor',
      category: 'Audio',
      price: 'Rp430.000',
      description: 'Dynamic In-Earh Headphone with Aluminium-magnesium Alloy Dome Composite Diaphragm',
    ),
    CatalogItem(
      id: '3',
      title: 'Type-C Multiport Dock',
      category: 'Accessories',
      price: 'Rp200.000',
      description: 'Aluminum 7-in-1 hub featuring 4K HDMI, Gigabit Ethernet, and 100W Power Delivery passthrough.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Katalog Produk')),
      body: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return Card(
            elevation: 1,
            margin: const EdgeInsets.only(bottom: 12),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: ListTile(
              contentPadding: const EdgeInsets.all(16),
              leading: CircleAvatar(
                backgroundColor: Theme.of(context).colorScheme.primaryContainer,
                child: Text('${index + 1}'),
              ),
              title: Text(
                item.title,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text('${item.category} • ${item.price}'),
              trailing: const Icon(Icons.arrow_forward_ios, size: 16),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailScreen(item: item),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
