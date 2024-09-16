
import 'package:electronicproject/google%20fond.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
class DetailTwo extends StatelessWidget {
  const DetailTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Ratings & Reviews",
              style: myStyle(18,Colors.black,FontWeight.bold),
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
        Gap(20),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      Text("4.7",style: myStyle(50,Colors.black,FontWeight.bold),),
                      Icon(Icons.star_rate,color: Colors.black,size: 50,)
                    ],
                  ),
                  Text("90 ratings and 14",style: myStyle(18,Colors.grey),),
                  Text("reviews",style: myStyle(18,Colors.grey),),
                ],
              ),
            ),
            Container(
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text("5",style: myStyle(18),),
                      Icon(Icons.star_rate_rounded),
                      Container(
                        width: 100,
                        height: 10,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.green,
                        ),
                      ),
                      Text("78",style: myStyle(18),)
                    ],
                  ),
                  Row(
                    children: [
                      Text("4",style: myStyle(18),),
                      Icon(Icons.star_rate_rounded),
                      Stack(
                        children: [
                          Container(
                            width: 100,
                            height: 10,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey,
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft, // or Alignment.centerRight
                            child: Container(
                              width: 40,
                              height: 10,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.green,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Text("7",style: myStyle(18),)
                    ],
                  ),
                  Row(
                    children: [
                      Text("3",style: myStyle(18),),
                      Icon(Icons.star_rate_rounded),
                      Stack(
                        children: [
                          Container(
                            width: 100,
                            height: 10,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey,
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft, // or Alignment.centerRight
                            child: Container(
                              width: 20,
                              height: 10,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.green,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Text("1",style: myStyle(18),)
                    ],
                  ),
                  Row(
                    children: [
                      Text("2",style: myStyle(18),),
                      Icon(Icons.star_rate_rounded),
                      Stack(
                        children: [
                          Container(
                            width: 100,
                            height: 10,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey,
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft, // or Alignment.centerRight
                            child: Container(
                              width: 30,
                              height: 10,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.orangeAccent,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Text("2",style: myStyle(18),)
                    ],
                  ),
                  Row(
                    children: [
                      Text("1",style: myStyle(18),),
                      Icon(Icons.star_rate_rounded),
                      Stack(
                        children: [
                          Container(
                            width: 100,
                            height: 10,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey,
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft, // or Alignment.centerRight
                            child: Container(
                              width: 15,
                              height: 10,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.red,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Text("3",style: myStyle(18),)
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ],
    );
  }
}
