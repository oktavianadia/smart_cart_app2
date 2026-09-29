import 'package:flutter/foundation.dart';
import '../models/cart_item.dart';
import '../models/product.dart';

/// State management terpusat untuk keranjang belanja.
/// Semua halaman (Katalog & Keranjang) membaca/mengubah data lewat
/// provider ini -- tidak ada setState() lokal yang menyimpan data cart.
class CartProvider extends ChangeNotifier {
  final Map<String, CartItem> _items = {};

  /// Daftar item pada keranjang, siap dipakai ListView.builder.
  List<CartItem> get items => _items.values.toList();

  bool get isEmpty => _items.isEmpty;

  /// Jumlah total item (dipakai badge counter di AppBar).
  int get totalQuantity =>
      _items.values.fold(0, (sum, item) => sum + item.quantity);

  /// Total biaya belanja, dihitung ulang otomatis tiap kali dipanggil.
  int get totalPrice =>
      _items.values.fold(0, (sum, item) => sum + item.subtotal);

  void addToCart(Product product) {
    if (_items.containsKey(product.id)) {
      _items[product.id]!.quantity += 1;
    } else {
      _items[product.id] = CartItem(product: product);
    }
    notifyListeners();
  }

  void increment(String productId) {
    if (_items.containsKey(productId)) {
      _items[productId]!.quantity += 1;
      notifyListeners();
    }
  }

  void decrement(String productId) {
    if (!_items.containsKey(productId)) return;
    if (_items[productId]!.quantity > 1) {
      _items[productId]!.quantity -= 1;
    } else {
      _items.remove(productId);
    }
    notifyListeners();
  }

  void removeItem(String productId) {
    _items.remove(productId);
    notifyListeners();
  }

  void clearCart() {
    _items.clear();
    notifyListeners();
  }
}
