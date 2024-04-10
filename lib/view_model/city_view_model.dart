import 'package:mysample/repository/products_repository.dart';
import 'package:mysample/models/products.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mysample/models/product.dart';

class ProductsViewModelNotifier extends StateNotifier<List<Product>> {
  ProductsViewModelNotifier() : super([]);

  final ProductsRepository _productsRepository = ProductsRepository();

  displayProduct() async {
    final products = await _productsRepository.getProducts();
    List<Product> finalProducts = [];
    finalProducts.addAll(products.products);
    state = finalProducts;
  }
}

final productsViewModelProvider =
    StateNotifierProvider<ProductsViewModelNotifier, List<Product>>((ref) {
  return ProductsViewModelNotifier();
});
