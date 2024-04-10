import 'package:json_annotation/json_annotation.dart';
import 'package:mysample/dto/product_dto.dart';
import 'package:mysample/models/products.dart';

part 'products_dto.g.dart';

@JsonSerializable()
class ProductsDTO {
  ProductsDTO(
      {required this.products,
      required this.total,
      required this.skip,
      required this.limit});

  List<ProductDTO> products;
  int total;
  int skip;
  int limit;

  factory ProductsDTO.fromJson(Map<String, dynamic> json) =>
      _$ProductsDTOFromJson(json);
  Map<String, dynamic> toJson() => _$ProductsDTOToJson(this);
}
