import 'package:flutter/material.dart';

/// Model data produk pada katalog.
/// [imageAsset] adalah foto produk asli di assets/images/.
/// [iconAsset] & [tint] tetap disimpan sebagai fallback (dipakai kalau
/// suatu saat foto belum tersedia untuk produk baru).
class Product {
  final String id;
  final String name;
  final int price;
  final String imageAsset;
  final String iconAsset;
  final Color color;
  final Color tint;

  const Product({
    required this.id,
    required this.name,
    required this.price,
    required this.imageAsset,
    required this.iconAsset,
    required this.color,
    required this.tint,
  });
}

/// Daftar produk contoh untuk katalog.
final List<Product> dummyProducts = [
  Product(
    id: 'p1',
    name: 'Sneakers Urban Runner',
    price: 459000,
    imageAsset: 'assets/images/sneaker_urban_runner.webp',
    iconAsset: 'assets/icons/shoe.svg',
    color: const Color(0xFF2F5233),
    tint: const Color(0xFFE4EBE1),
  ),
  Product(
    id: 'p2',
    name: 'Tas Ransel Explore',
    price: 329000,
    imageAsset: 'assets/images/tas_ransel_explore.jpg',
    iconAsset: 'assets/icons/bag.svg',
    color: const Color(0xFFB8863B),
    tint: const Color(0xFFF3E7D3),
  ),
  Product(
    id: 'p3',
    name: 'Jaket Bomber Classic',
    price: 389000,
    imageAsset: 'assets/images/jaket_bomber_classic.jpg',
    iconAsset: 'assets/icons/jacket.svg',
    color: const Color(0xFF54606B),
    tint: const Color(0xFFE4E7EA),
  ),
  Product(
    id: 'p4',
    name: 'Topi Baseball Signature',
    price: 129000,
    imageAsset: 'assets/images/topi_baseball_signature.jpg',
    iconAsset: 'assets/icons/cap.svg',
    color: const Color(0xFFA8503B),
    tint: const Color(0xFFF1DED7),
  ),
];
