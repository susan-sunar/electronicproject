class CategoryModel{
  String img;

  CategoryModel({
    required this.img
  });
}

class TopdealModel{
  String img;
  String productName;
  int price;
  String initialPrice;
  double rating;
  String discount;
  int quantity;

  TopdealModel({
    required this.img,
    required this.productName,
    required this.price,
    required this.initialPrice,
    required this.rating,
    required this.discount,
    required this.quantity,
  });
}

//for laptop
class LaptopModel{
  String img;

  LaptopModel({
    required this.img
  });
}

class CategoryDetailModel{
  String img;
  String name;
  String reviews;
  String rating;
  String initialPrice;
  String discountPrice;
  String discountPercent;

  CategoryDetailModel({
    required this.img,
    required this.name,
    required this.reviews,
    required this.rating,
    required this.initialPrice,
    required this.discountPrice,
    required this.discountPercent,
  });
}

class CartModel{
  String productName;
  int price;
  String img;
  int initialPrice;
  String discount;
  String stock;

  CartModel({
    required this.productName,
    required this.price,
    required this.img,
    required this.initialPrice,
    required this.discount,
    required this.stock,
  });
}