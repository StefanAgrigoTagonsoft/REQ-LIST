import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:mysample/dto/product_dto.dart';
import 'package:mysample/dto/products_dto.dart';

class ProductsService {
  String url = ('https://dummyjson.com/products');
  Future<ProductsDTO> fetchProducts() async {
    try {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        Map<String, dynamic> responseProducts = jsonDecode(response.body);
        // print('SERVICE PRODUCT: $responseProducts');
        ProductsDTO productsDto = ProductsDTO.fromJson(responseProducts);

        return Future.value(productsDto);
      } else {
        throw Exception('Failed to load products');
      }
    } catch (e) {
      throw Exception('Failed to load products: $e');
    }
  }

  Future<List<ProductDTO>> fetchProduct() async {
    try {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        Map<String, dynamic> responseProduct = jsonDecode(response.body);
        List<Map<String, dynamic>> productList =
            jsonDecode(responseProduct['products']);
        // print('$responseProduct');
        List<ProductDTO> productDtoList = productList
            .map((productJson) => ProductDTO.fromJson(productJson))
            .toList();
        return Future.value(productDtoList);
      } else {
        throw Exception('Failed to load product');
      }
    } catch (e) {
      throw Exception('Failed to load product: $e');
    }
  }
}
