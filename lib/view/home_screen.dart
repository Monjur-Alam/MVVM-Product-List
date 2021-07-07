import 'package:flutter/material.dart';
import 'package:mvvm_product_list/view/product_grid.dart';
import 'package:mvvm_product_list/viewmodel/product_list_view_model.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Widget _buildAllProductList(ProductListViewModel productListViewModel) {
    switch (productListViewModel.loadingStatus) {
      case LoadingStatus.searching:
        return Center(
          child: CircularProgressIndicator(),
        );
      case LoadingStatus.completed:
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: ProductGrid(
            productList: productListViewModel.productList,
          ),
        );
      case LoadingStatus.empty:
        return Center(
          child: Text("No results found"),
        );
      default:
        return Center(
          child: Text("No results found"),
        );
    }
  }

  @override
  void initState() {
    super.initState();
    Provider.of<ProductListViewModel>(context, listen: false).getProductList();
  }

  @override
  Widget build(BuildContext context) {
    var productListViewModel = Provider.of<ProductListViewModel>(context);
    return Scaffold(
      body: _buildAllProductList(productListViewModel),
    );
  }
}
