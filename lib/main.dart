import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mysample/models/products.dart';
import 'package:mysample/view_model/city_view_model.dart';

class WeatherApp extends ConsumerWidget {
  const WeatherApp({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final productsViewModel = ref.watch(productsViewModelProvider.notifier);
    productsViewModel.displayProduct();

    final products = ref.watch(productsViewModelProvider);

    print('elemente ${products}');

    if (products.isEmpty) {
      return const Scaffold(
        body: Center(
          child: Center(
            child: CircularProgressIndicator(),
          ),
        ),
      );
    } else {
      return Scaffold(
        body: Center(
            child: ListView.builder(
          itemCount: products.length,
          itemBuilder: (context, index) {
            var product = products[index];
            return Text(product.brand);
          },
        )),
      );
    }
  }
}

void main() {
  runApp(const ProviderScope(
    child: MaterialApp(
      home: WeatherApp(),
    ),
  ));
}
