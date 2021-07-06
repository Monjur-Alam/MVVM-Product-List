import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mvvm_product_list/view/circle_image.dart';
import 'package:mvvm_product_list/viewmodel/product_view_model.dart';

class ProductGrid extends StatelessWidget {
  final List<ProductViewModel> productList;

  ProductGrid({this.productList});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: this.productList.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount:
              (MediaQuery.of(context).orientation == Orientation.portrait)
                  ? 2
                  : 3),
      itemBuilder: (BuildContext _, int index) {
        final data = this.productList[index];

        return GestureDetector(
          onTap: () {

          },
          child: Card(
            margin: EdgeInsets.all(10),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 100,
                    child: CircleImage(
                      imageUrl: data.product_img_url,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    data.product_name,
                    style: TextStyle(color: Colors.black),
                    maxLines: 1,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '\$' + data.product_sale_price,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.red,
                        ),
                      ),
                      InkWell(
                        borderRadius: BorderRadius.circular(50),
                        onTap: () {},
                        child: Container(
                          padding: EdgeInsets.all(8),
                          height: 28,
                          width: 28,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            shape: BoxShape.circle,
                          ),
                          child: SvgPicture.asset(
                            "assets/icons/Heart Icon_2.svg",
                            color: Color(0xFFFF4848)
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
