
import 'package:electronicproject/data/electro.dart';
import 'package:electronicproject/google%20fond.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class Addtocart extends StatelessWidget {
  const Addtocart({super.key});

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
        title: Text(
          "Cart",
          style: myStyle(26, Colors.black, FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(

          // margin: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.all(10),
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Deliver to Susturi",
                          style: myStyle(18),
                        ),
                        Container(
                          width: 70,
                          height: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.grey.withOpacity(0.2),
                              border: Border.all(
                                style: BorderStyle.solid,
                              )),
                          child: Center(child: Text("Change")),
                        )
                      ],
                    ),
                    Text(
                      "Opposite Grand Mall, Ambavadi Road,",
                      style: myStyle(16, Colors.grey),
                    ),
                    Text(
                      "Elisbridge, Surendra Mangaldas RD,",
                      style: myStyle(16, Colors.grey),
                    ),
                    Text(
                      "Colony, Ambavadi, Ahmedabad",
                      style: myStyle(16, Colors.grey),
                    ),
                    Text(
                      "Gujarat 380044",
                      style: myStyle(16, Colors.grey),
                    ),
                  ],
                ),
              ),
              Gap(10),
              Divider(),
              Divider(),
              ListView.builder(
                itemCount: allCart.length,
                shrinkWrap: true,
                // physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.all(15),
                        child: Row(
                          children: [
                            Image(
                                image: AssetImage("${allCart[index].img}"),
                                width: 130),
                            Gap(10),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "${allCart[index].productName}",
                                    style: myStyle(
                                      16,
                                    ),
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  Gap(10),
                                  Row(
                                    children: [
                                      Text(
                                        "\u20B9 ${allCart[index].price}",
                                        style: myStyle(
                                            16, Colors.black, FontWeight.bold),
                                      ),
                                      Gap(10),
                                      Text(
                                        "\u20B9 ${allCart[index].initialPrice}",
                                        style: TextStyle(
                                            decoration:
                                            TextDecoration.lineThrough,
                                            decorationThickness: 2),
                                      ),
                                      Gap(10),
                                      Text(
                                        "${allCart[index].discount}",
                                        style: myStyle(
                                            16, Colors.green, FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                  Gap(10),
                                  Text("${allCart[index].stock}",style: myStyle(16,Colors.red),),
                                  Gap(10),
                                  Row(
                                    children: [
                                      Container(
                                        padding: EdgeInsets.all(5),
                                        width: 80,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(5),
                                            color: Colors.grey.withOpacity(0.4)
                                        ),
                                        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text("-",style: myStyle(18,Colors.black,FontWeight.bold),),
                                            Text("1",style: myStyle(18,Colors.black,FontWeight.bold),),
                                            Text("+",style: myStyle(18,Colors.black,FontWeight.bold),),
                                          ],
                                        ),
                                      ),
                                      Gap(10),
                                      Container(
                                        padding: EdgeInsets.all(5),
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(5),
                                            color: Colors.grey.withOpacity(0.4)
                                        ),
                                        child: Icon(Icons.favorite_outline),
                                      ),
                                      Gap(10),
                                      Container(
                                        padding: EdgeInsets.all(5),
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(5),
                                            color: Colors.grey.withOpacity(0.4)
                                        ),
                                        child: Icon(CupertinoIcons.trash),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                },
              ),
              Gap(10),
              Divider(),
              Divider(),
              Row(
                children: [
                  Gap(10),
                  Text("Delivery by 14 Sep, Monday | Free \u20B940",style: myStyle(18),),
                ],
              ),
              Gap(10),
              Divider(),
              Container(
                margin: EdgeInsets.all(10),
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Bag Total",style: myStyle(20,Colors.black,FontWeight.bold),),
                    Gap(10),
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Total MRP",style: myStyle(18,Colors.grey),),
                            Text("Total Discount",style: myStyle(18,Colors.grey),),
                            Text("Selling Price",style: myStyle(18,Colors.grey),),
                            Text("Shipping Fee",style: myStyle(18,Colors.grey),),
                          ],
                        ),
                        Column(crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text("\u20B9 1,92,699",style: myStyle(18,Colors.black,FontWeight.bold),),
                            Text("-\u20B9 10,700",style: myStyle(18,Colors.black,FontWeight.bold),),
                            Text("\u20B9 1,92,699",style: myStyle(18,Colors.black,FontWeight.bold),),
                            Text("Free",style: myStyle(18,Colors.green,FontWeight.bold),),
                          ],
                        )
                      ],
                    ),
                    Gap(20),
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Amount Payable",style: myStyle(22,),),
                        Text("\u20B9 1,92,699",style: myStyle(20,Colors.black,FontWeight.bold),),
                      ],
                    ),
                  ],
                ),
              ),
              Gap(20),
              Container(
                padding: EdgeInsets.only(top: 20,bottom: 20),
                width: double.infinity,
                color: Colors.black,
                child: Center(child: Text("Proceed to pay \u20B9 1,92,699",style: myStyle(20,secondaryColor,FontWeight.bold),)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
