
import 'package:electronicproject/data/electro.dart';
import 'package:electronicproject/google%20fond.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios_new_rounded,
              size: 20,
              weight: 2,
            ),
            onPressed: () {
              Get.back();
            },
          ),
          title: Text("Laptops",style: myStyle(26,Colors.black,FontWeight.bold),),
          centerTitle: true,
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                // handle search action
              },
            ),
            IconButton(
              icon: Icon(Icons.shopping_cart),
              onPressed: () {
                Get.toNamed("/cart");
              },
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(10),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(child: Container(
                      padding: EdgeInsets.all(10),
                      child: Row(
                        children: [
                          Icon(Icons.compare),
                          Gap(10),
                          Text("Compare",style: myStyle(16),)
                        ],
                      ),
                    )),
                    Expanded(child: Container(
                      padding: EdgeInsets.all(10),
                      child: Row(
                        children: [
                          Icon(Icons.arrow_downward),
                          Icon(Icons.sort_outlined),
                          Gap(10),
                          Text("Sort",style: myStyle(16),)
                        ],
                      ),
                    )),
                    Expanded(child: Container(
                      padding: EdgeInsets.all(10),
                      child: Row(
                        children: [
                          Icon(Icons.filter_alt),
                          Gap(10),
                          Text("Filter",style: myStyle(16),)
                        ],
                      ),
                    )),
                  ],
                ),
                ListView.builder(
                  itemCount: categoryDetail.length,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 10, bottom: 10),
                          child: Row(
                            children: [
                              Image(image: AssetImage("${categoryDetail[index].img}"), width: 130),
                              Gap(10),
                              Expanded(
                                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "${categoryDetail[index].name}", style: myStyle(16,),
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    Gap(10),
                                    Row(
                                      children: [
                                        Container(
                                          width: 60,
                                          padding: EdgeInsets.all(2),
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(8),
                                              color: Colors.black),
                                          child: Row(mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                "${categoryDetail[index].rating}",
                                                style: myStyle(16, secondaryColor),
                                              ),
                                              Icon(
                                                Icons.star_rate_rounded,
                                                color: secondaryColor,
                                              )
                                            ],
                                          ),
                                        ),
                                        Gap(5),
                                        Text("${categoryDetail[index].reviews}",style: myStyle(16,Colors.grey),),
                                      ],
                                    ),
                                    Gap(10),
                                    Row(
                                      children: [
                                        Text("\u20B9 ${categoryDetail[index].discountPrice}",style: myStyle(16,Colors.black,FontWeight.bold),),
                                        Gap(10),
                                        Text("\u20B9 ${categoryDetail[index].initialPrice}",style: TextStyle(decoration: TextDecoration.lineThrough,decorationThickness: 2),),
                                        Gap(10),
                                        Text("${categoryDetail[index].discountPercent}",style: myStyle(16,Colors.green,FontWeight.bold),),
                                      ],
                                    ),
                                    Gap(10),
                                    Row(
                                      children: [
                                        Icon(CupertinoIcons.tag_fill,color: Colors.black,size: 15,),
                                        Gap(10),
                                        Expanded(child: Text("Upto \u20b914,850 Off on Exchange No Cost EMI"))
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 5),
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.grey.withOpacity(0.3)
                              ),
                              child: Text("35.56 cm (14 inch) Full HD Display"),
                            ),
                            Gap(10),
                            Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.grey.withOpacity(0.3)
                              ),
                              child: Text("1.50 kg"),
                            )
                          ],
                        ),
                        Gap(10),
                        Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.grey.withOpacity(0.3)
                          ),
                          child: Text("No Optical Disk Drive"),
                        ),
                        Gap(10),
                        Divider(), // Add a divider
                      ],
                    );
                  },
                ),
                Gap(10),
                Text("Select Processor",style: myStyle(24,Colors.black,FontWeight.bold),),
                Gap(10),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white70,
                          border: Border.all()
                      ),
                      child: Text("Intel Core i3"),
                    ),
                    Gap(10),
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white70,
                          border: Border.all()
                      ),
                      child: Text("Intel Core i5"),
                    ),
                    Gap(10),
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white70,
                          border: Border.all()
                      ),
                      child: Text("Intel Pentium Series"),
                    ),
                  ],
                ),
                Gap(10),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white70,
                          border: Border.all()
                      ),
                      child: Text("Intel Core i7"),
                    ),
                    Gap(10),
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white70,
                          border: Border.all()
                      ),
                      child: Text("AMD A Series"),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 20, bottom: 10),
                  child: Row(
                    children: [
                      Image(image: AssetImage("assets/image/laptop5-removebg-preview.png"), width: 130),
                      Gap(10),
                      Expanded(
                        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Apple MacBook Pro Core i9 9th Gen-(16 GB/512 GB SSD/Mac)", style: myStyle(16,),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                            Gap(10),
                            Row(
                              children: [
                                Container(
                                  width: 60,
                                  padding: EdgeInsets.all(2),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: Colors.black),
                                  child: Row(mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "4.7",
                                        style: myStyle(16, secondaryColor),
                                      ),
                                      Icon(
                                        Icons.star_rate_rounded,
                                        color: secondaryColor,
                                      )
                                    ],
                                  ),
                                ),
                                Gap(5),
                                Text("(90)",style: myStyle(16,Colors.grey),),
                              ],
                            ),
                            Gap(10),
                            Row(
                              children: [
                                Text("\u20B9 1,99,990",style: myStyle(16,Colors.black,FontWeight.bold),),
                                Gap(10),
                                Text("\u20B9 69,949",style: TextStyle(decoration: TextDecoration.lineThrough,decorationThickness: 2),),
                                Gap(10),
                              ],
                            ),
                            Gap(10),
                            Row(
                              children: [
                                Icon(CupertinoIcons.tag_fill,color: Colors.black,size: 15,),
                                Gap(10),
                                Expanded(child: Text("Upto \u20b914,850 Off on Exchange No Cost EMI"))
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Gap(10),
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.grey.withOpacity(0.3)
                  ),
                  child: Text("AMD Raedeon Pro 5300 M 4 GB Gfx"),
                ),
                Gap(10),
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.grey.withOpacity(0.3)
                  ),
                  child: Text("40.64 cm (16 inch) Quad HD Display"),
                ),
                Gap(10),
                Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.grey.withOpacity(0.3)
                  ),
                  child: Text("No Optical Disk Drive"),
                ),
              ],
            ),
          ),
        )
    );
  }
}
