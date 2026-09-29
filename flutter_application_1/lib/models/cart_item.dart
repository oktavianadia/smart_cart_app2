import 'product.dart';

/// Representasi satu baris pada keranjang: produk + jumlahnya.
class CartItem {
  final Product product;
  int quantity;

  CartItem({required this.product, this.quantity = 1});

  int get subtotal => product.price * quantity;
}
