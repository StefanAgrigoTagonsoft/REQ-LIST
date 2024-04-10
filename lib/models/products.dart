import 'package:mysample/dto/product_dto.dart';
import 'package:mysample/dto/products_dto.dart';
import 'package:mysample/models/product.dart';

class Products {
  late List<Product> products;
  late int total;
  late int skip;
  late int limit;

  Products.DTO({required ProductsDTO productsDTO}) {
    products = productsDTO.products
        .map((productDto) => Product.DTO(productDTO: productDto))
        .toList();
    total = productsDTO.total;
    skip = productsDTO.skip;
    limit = productsDTO.limit;
  }
}
