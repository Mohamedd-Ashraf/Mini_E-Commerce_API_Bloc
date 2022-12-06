// class Products_model {
//   List<Products>? products;
//   int? total;
//   int? skip;
//   int? limit;

//   Products_model({this.products, this.total, this.skip, this.limit});

//   Products_model.fromJson(Map<String, dynamic> json) {
//     if (json['products'] != null) {
//       products = <Products>[];
//       json['products'].forEach((v) {
//         products!.add(new Products.fromJson(v));
//       });
//     }
//     total = json['total'];
//     skip = json['skip'];
//     limit = json['limit'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     if (this.products != null) {
//       data['products'] = this.products!.map((v) => v.toJson()).toList();
//     }
//     data['total'] = this.total;
//     data['skip'] = this.skip;
//     data['limit'] = this.limit;
//     return data;
//   }
// }

// class Products {
//   int? id;
//   String? title;
//   String? description;
//   int? price;
//   double? discountPercentage;
//   double? rating;
//   int? stock;
//   String? brand;
//   String? category;
//   String? thumbnail;
//   List<String>? images;

//   Products(
//       {this.id,
//       this.title,
//       this.description,
//       this.price,
//       this.discountPercentage,
//       this.rating,
//       this.stock,
//       this.brand,
//       this.category,
//       this.thumbnail,
//       this.images});

//   Products.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     title = json['title'];
//     description = json['description'];
//     price = json['price'];
//     discountPercentage = json['discountPercentage'];
//     rating = json['rating'];
//     stock = json['stock'];
//     brand = json['brand'];
//     category = json['category'];
//     thumbnail = json['thumbnail'];
//     images = json['images'].cast<String>();
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = this.id;
//     data['title'] = this.title;
//     data['description'] = this.description;
//     data['price'] = this.price;
//     data['discountPercentage'] = this.discountPercentage;
//     data['rating'] = this.rating;
//     data['stock'] = this.stock;
//     data['brand'] = this.brand;
//     data['category'] = this.category;
//     data['thumbnail'] = this.thumbnail;
//     data['images'] = this.images;
//     return data;
//   }
// }

class ProductModel {
  final int id;
  final String title;
  final String description;
  final int price;
  final double discountPercentage;
  final double rating;
  final int stock;
  final String brand;
  final String category;
  final String thumbnail;
  final List<dynamic> images;

  ProductModel(
      {required this.id,
      required this.title,
      required this.description,
      required this.price,
      required this.discountPercentage,
      required this.rating,
      required this.stock,
      required this.brand,
      required this.category,
      required this.thumbnail,
      required this.images});

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
        id: json['id'],
        title: json['title'],
        description: json['description'],
        price: json['price'],
        discountPercentage: json['discountPercentage'],
        rating: json['rating'],
        stock: json['stock'],
        brand: json['brand'],
        category: json['category'],
        thumbnail: json['thumbnail'],
        images: json['images']);
  }
}
