import 'package:flutter/material.dart';

import '../models/catalog_item.dart';

class DetailScreen extends StatefulWidget {
  final CatalogItem item;

  const DetailScreen({super.key, required this.item});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Detail Katalog')),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Explicit back button row as requested in documentation
              TextButton.icon(
                onPressed: () => Navigator.pop(context),
                icon: const Icon(Icons.arrow_back),
                label: const Text('Kembali ke Katalog'),
                style: TextButton.styleFrom(padding: EdgeInsets.zero),
              ),
              const SizedBox(height: 12),
              Text(
                widget.item.title,
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                widget.item.price,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
              const SizedBox(height: 16),
              // Pastel container with padding for description
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: const Color(0xFFF0F4FF), // Pastel lavender/blue
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: const Color(0xFFDCE6FA)),
                ),
                child: Text(
                  widget.item.description,
                  style: const TextStyle(
                    fontSize: 14,
                    height: 1.5,
                    color: Colors.black87,
                  ),
                ),
              ),
              const SizedBox(height: 24),
              // Interactive State Widget
              SizedBox(
                width: double.infinity,
                child: FilledButton.icon(
                  onPressed: () {
                    setState(() {
                      isFavorite = !isFavorite;
                    });
                  },
                  icon: Icon(
                    isFavorite ? Icons.favorite : Icons.favorite_border,
                  ),
                  label: Text(
                    isFavorite ? 'Tersimpan di Favorit' : 'Tambah ke Favorit',
                  ),
                  style: FilledButton.styleFrom(
                    backgroundColor: isFavorite ? Colors.pink[400] : null,
                    padding: const EdgeInsets.symmetric(vertical: 14),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
