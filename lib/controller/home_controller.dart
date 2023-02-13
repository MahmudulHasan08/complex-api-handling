// import 'package:get/state_manager.dart';
// import 'package:practise/model/test_model.dart';

// import '../model/user_Model.dart';
// import '../services/service.dart';

// class ProductController extends GetxController {
//   var isLoading = true.obs;
//   var productList = <Product>[].obs;

//   @override
//   void onInit() {
//     fetchProducts();
//     super.onInit();
//   }

//   void fetchProducts() async {
//     try {
//       isLoading(true);
//       var products = await RemoteServices.fetchProducts();
//       if (products != null) {
//         productList.value = products;
//       }
//     } finally {
//       isLoading(false);
//     }
//   }
// }

import 'package:get/state_manager.dart';

import '../model/user_Model.dart';
import '../services/service.dart';

class ProductController extends GetxController {
  // var isLoading = true.obs;
  // var productList = <Product>[].obs;

  // @override
  // void onInit() {
  //   fetchProducts();
  //   super.onInit();
  // }

  // void fetchProducts() async {
  //   try {
  //     isLoading(true);
  //     var products = await RemoteServices.fetchProducts();
  //     if (products != null) {
  //       productList.value = products;
  //     }
  //   } finally {
  //     isLoading(false);
  //   }
  // }
}
