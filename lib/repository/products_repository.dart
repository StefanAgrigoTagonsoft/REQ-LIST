import 'package:mysample/dto/product_dto.dart';
import 'package:mysample/dto/products_dto.dart';
import 'package:mysample/services/products_service.dart';
import 'package:mysample/models/products.dart';
import 'package:mysample/models/product.dart';

class ProductsRepository {
  final ProductsService _productsService = ProductsService();

  Future<Products> getProducts() async {
    ProductsDTO productsDTO = await _productsService.fetchProducts();
    Products products = Products.DTO(productsDTO: productsDTO);
    return Future.value(products);
  }

  Future<List<Product>> getProduct() async {
    List<ProductDTO> productDTO = await _productsService.fetchProduct();
    List<Product> product = productDTO
        .map((productDto) => Product.DTO(productDTO: productDto))
        .toList();
    return Future.value(product);
  }
}
