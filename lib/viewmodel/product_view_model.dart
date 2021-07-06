

import 'package:mvvm_product_list/model/product_model.dart';

class ProductViewModel {
  ProductModel model;

  ProductViewModel({ProductModel data}) : model = data;

  int get id {
    return model.id;
  }

  int get category_id {
    return model.category_id;
  }

  String get product_name {
    return model.product_name;
  }

  String get product_desc {
    return model.product_desc;
  }

  String get product_url {
    return model.product_url;
  }

  String get product_img_url {
    return model.product_img_url;
  }

  String get product_price {
    return model.product_price;
  }

  String get product_sale_price {
    return model.product_sale_price;
  }

  int get product_rating {
    return model.product_rating;
  }

  String get product_source_name {
    return model.product_source_name;
  }

  String get product_shipping_free {
    return model.product_shipping_free;
  }

  int get product_is_feature_status {
    return model.product_is_feature_status;
  }
}