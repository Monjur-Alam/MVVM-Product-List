class ProductModel {
  final int id;
  final int category_id;
  final String product_name;
  final String product_desc;
  final String product_url;
  final String product_img_url;
  final String product_price;
  final String product_sale_price;
  final int product_rating;
  final String product_source_name;
  final String product_shipping_free;
  final int product_is_feature_status;

  ProductModel(
      {this.id,
      this.category_id,
      this.product_name,
      this.product_desc,
      this.product_url,
      this.product_img_url,
      this.product_price,
      this.product_sale_price,
      this.product_rating,
      this.product_source_name,
      this.product_shipping_free,
      this.product_is_feature_status});

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      id: json['id'],
      category_id: json['category_id'],
      product_name: json['product_name'],
      product_desc: json['product_desc'],
      product_url: json['product_url'],
      product_img_url: json['product_img_url'],
      product_price: json['product_price'],
      product_sale_price: json['product_sale_price'],
      product_rating: json['product_rating'],
      product_source_name: json['product_source_name'],
      product_shipping_free: json['product_shipping_free'],
      product_is_feature_status: json['product_is_feature_status'],
    );
  }
}
