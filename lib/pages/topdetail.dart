
import 'package:electronicproject/data/electro.dart';
import 'package:electronicproject/google%20fond.dart';
import 'package:electronicproject/model/electro.dart';
import 'package:electronicproject/pages/detailone.dart';
import 'package:electronicproject/pages/detailthree.dart';
import 'package:electronicproject/pages/detailtwo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class TopDetails extends StatelessWidget {
  TopdealModel topdealModel;
  TopDetails({super.key, required this.topdealModel});

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
        physics: BouncingScrollPhysics(),
        child: Container(
          margin: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                  child: Image(
                    image: AssetImage("${topdealModel.img}"),
                    height: 200,
                  )),
              Gap(10),
              Text(
                "${topdealModel.productName}",
                style: myStyle(22, Colors.black, FontWeight.bold),
              ),
              Gap(10),
              Container(
                width: 60,
                padding: EdgeInsets.all(2),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.black),
                child: Row(
                  children: [
                    Text(
                      "${topdealModel.rating}",
                      style: myStyle(16, secondaryColor),
                    ),
                    Icon(
                      Icons.star_rate_rounded,
                      color: secondaryColor,
                    )
                  ],
                ),
              ),
              Gap(10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "\u20B9 ${topdealModel.price}",
                    style: myStyle(20, Colors.black, FontWeight.bold),
                  ),
                  Icon(Icons.favorite_outline)
                ],
              ),
              Gap(20),
              DetailOne(),
              Gap(10),
              Divider(),
              Divider(),
              DetailTwo(),
              Gap(20),
              SizedBox(
                height: 120,
                child: ListView.builder(
                    itemCount: laptop.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index){
                      return Container(
                        width: 130,
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Image(image: AssetImage("${laptop[index].img}"),fit: BoxFit.cover,),
                      );
                    }),
              ),
              Gap(20),
              DetailThree(),
              Gap(10),
              Divider(),
              Text("Other Products",style: myStyle(24,Colors.black,FontWeight.bold),),
              Gap(15),
              Row(
                children: [
                  Expanded(child: GridView.builder(
                      physics: BouncingScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: allTop.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 0.56,
                          crossAxisSpacing: 3,
                          mainAxisSpacing: 3),
                      itemBuilder: (context, index){
                        return GestureDetector(
                          onTap: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>TopDetails(topdealModel: allTop[index])));
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.fromBorderSide(BorderSide(width: 1,style: BorderStyle.solid,color: Colors.red)),
                            ),
                            padding: EdgeInsets.all(5),
                            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 60,
                                  padding: EdgeInsets.all(2),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: Colors.black
                                  ),
                                  child: Row(
                                    children: [
                                      Text("${allTop[index].rating}",style: myStyle(16,secondaryColor),),
                                      Icon(Icons.star_rate_rounded,color: secondaryColor,)
                                    ],
                                  ),
                                ),
                                Gap(30),
                                Image(image: AssetImage("${allTop[index].img}"),height: 100,),
                                Gap(10),
                                Text("${allTop[index].productName}",style: myStyle(16,Colors.black,FontWeight.bold),),
                                Gap(5),
                                Row(
                                  children: [
                                    Text("\u20B9 ${allTop[index].price}",style: myStyle(16,Colors.black,FontWeight.bold),),
                                    Gap(10),
                                    Text("\u20B9 ${allTop[index].initialPrice}",style: TextStyle(decoration: TextDecoration.lineThrough,decorationThickness: 2),),
                                  ],
                                ),
                                Text("${allTop[index].discount}",style: myStyle(16,Colors.green,FontWeight.bold),),
                                Gap(10),
                                Row(
                                  children: [
                                    Icon(CupertinoIcons.tag_fill,color: Colors.black,size: 20,),
                                    Text("Exchange Offer & More")
                                  ],
                                )
                              ],
                            ),
                          ),
                        );
                      }))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
