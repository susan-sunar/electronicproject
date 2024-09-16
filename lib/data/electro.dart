

import 'package:electronicproject/model/electro.dart';

List<CategoryModel> allCategories= [
  CategoryModel(img: "assets/image/category1.png"),
  CategoryModel(img: "assets/image/category2.png"),
  CategoryModel(img: "assets/image/category3.png"),
  CategoryModel(img: "assets/image/category4.png"),
];

List<TopdealModel> allTop= [
  TopdealModel(
    img: "assets/image/top.jpg",
    productName: "Canon 80D Camera",
    price: 13789,
    initialPrice: "15900",
    discount: "6% off",
    rating: 4.3,
    quantity: 0,
  ),
  TopdealModel(
      img: "assets/image/top1.jpg",
      productName: "Apple MackBook pro 14",
      price: 80000,
      initialPrice: "74000",
      discount: "10% off",
      quantity: 0,
      rating: 4.7
  ),
  TopdealModel(
      img: "assets/image/top2.webp",
      productName: "UMOJAA Bluetooth TV Headphone",
      price: 13000,
      initialPrice: "10500",
      discount: "5% off",
      quantity: 0,
      rating: 4.5
  ),
  TopdealModel(
      img: "assets/image/top3.jpg",
      productName: "Iphone 15 Pro Max",
      price: 34000,
      initialPrice: "32598",
      quantity: 0,
      discount: "20% off",
      rating: 4.8,
  ),
];

List<LaptopModel> laptop= [
  LaptopModel(img: "assets/image/laptop1.png"),
  LaptopModel(img: "assets/image/laptop2.png"),
  LaptopModel(img: "assets/image/laptop3.png"),
  LaptopModel(img: "assets/image/laptop4.png"),
];

List<CategoryDetailModel> categoryDetail= [
  CategoryDetailModel(
      img: "assets/image/laptop3-removebg-preview.png",
      rating: "4.7",
      initialPrice: "63,397",
      discountPrice: "69,949",
      reviews: "(130)",
      discountPercent: "10%off",
      name: "Acer aspire 5 Core i5 10th Gen(8GB/512GB SSD/Windows 10)"),
  CategoryDetailModel(
      img: "assets/image/laptop4-removebg-preview.png",
      rating: "4.5",
      initialPrice: "97,949",
      reviews: "(3,959)",
      discountPrice: "58,990",
      discountPercent: "26%off",
      name: "Acer aspire 5 Core i5 9th Gen(8GB/512GB SSD/Windows 10)"),
  CategoryDetailModel(
      img: "assets/image/laptop2-removebg-preview.png",
      rating: "4.3",
      initialPrice: "53,859",
      reviews: "(577)",
      discountPrice: "53,490",
      discountPercent: "",
      name: "Dell Vostro Core i5 10th Gen(8 GB/1 TB HDD/256)"),
  // CategoryDetailModel(
  //     img: "assets/image/laptop4.png",
  //     rating: "4.7",
  //     initialPrice: "69,949",
  //     reviews: "(90)",
  //     discountPrice: "1,99,990",
  //     discountPercent: "",
  //     name: "Apple MacBook Pro Core i9 9th Gen-(16 GB/512 GB SSD/Mac)"),
];

List<CartModel> allCart=[
  CartModel(
      productName: "Apple MacBook Pro Core i9 9th Gen-(16 GB/512 GB SSD/Mac)",
      price: 199990,
      initialPrice: 69949,
      discount: "5% off",
      img: "assets/image/top1.jpg",
      stock: "Only 2 left"),
  // CartModel(
      // productName: "JBL T450BT Bass Bluetooth Headset",
      // price: 2799,
      // initialPrice: 3499,
      // img: "assets/image/top4-removebg-preview.png",
      // discount: "20% off",
      // stock: "Only 6 left"),
];