import 'package:mysample/dto/product_dto.dart';

class Product {
  late int id;
  late String title;
  late String description;
  late int price;
  late double discountPercentage;
  late double rating;
  late int stock;
  late String brand;
  late String category;
  late String thumbnail;
  late List<String> images;

  Product.DTO({required ProductDTO productDTO}) {
    id = productDTO.id;
    title = productDTO.title;
    description = productDTO.description;
    price = productDTO.price;
    discountPercentage = productDTO.discountPercentage;
    rating = productDTO.rating;
    stock = productDTO.stock;
    brand = productDTO.brand;
    category = productDTO.category;
    thumbnail = productDTO.thumbnail;
    images = productDTO.images;
  }
}
