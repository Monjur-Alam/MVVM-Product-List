import 'package:flutter/material.dart';
import 'package:mvvm_product_list/model/product_model.dart';
import 'package:mvvm_product_list/service/web_service.dart';
import 'package:mvvm_product_list/viewmodel/product_view_model.dart';

enum LoadingStatus {
  completed,
  searching,
  empty,
}

class ProductListViewModel with ChangeNotifier {
  LoadingStatus loadingStatus = LoadingStatus.searching;
  List<ProductViewModel> productList = List<ProductViewModel>();
  void getProductList() async {
    List<ProductModel> newsArticles = await WebService().fetchProductList();
    notifyListeners();
    this.productList = newsArticles
        .map((data) => ProductViewModel(data: data))
        .toList();
    if (this.productList.isEmpty) {
      this.loadingStatus = LoadingStatus.empty;
    } else {
      this.loadingStatus = LoadingStatus.completed;
    }
    notifyListeners();
  }
}
