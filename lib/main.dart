import 'package:flutter/material.dart';
import 'package:mvvm_product_list/view/home_screen.dart';
import 'package:mvvm_product_list/viewmodel/product_list_view_model.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (_) => ProductListViewModel(),
          )
        ],
        child: HomeScreen(),
      ),
    );
  }
}
