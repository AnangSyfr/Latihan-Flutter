import 'package:get/get.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/products/add_product/bindings/add_product_binding.dart';
import '../modules/products/add_product/views/add_product_view.dart';
import '../modules/products/bindings/products_binding.dart';
import '../modules/products/views/products_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.PRODUCTS,
      page: () => ProductsView(),
      binding: ProductsBinding(),
      children: [
        GetPage(
          name: _Paths.ADD_PRODUCT,
          page: () => AddProductView(),
          binding: AddProductBinding(),
        ),
      ],
    ),
  ];
}
