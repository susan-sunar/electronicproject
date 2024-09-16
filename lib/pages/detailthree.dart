
import 'package:electronicproject/google%20fond.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
class DetailThree extends StatelessWidget {
  const DetailThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
                    "5",
                    style: myStyle(16, secondaryColor),
                  ),
                  Icon(
                    Icons.star_rate_rounded,
                    color: secondaryColor,
                  )
                ],
              ),
            ),
            Gap(20),
            Text("Best in the market!",style: myStyle(20,Colors.black,FontWeight.bold),)
          ],
        ),
        Gap(15),
        Text("$review1",style: myStyle(16),maxLines: 4,overflow: TextOverflow.ellipsis,),
        Gap(20),
        Image(image: AssetImage("assets/image/laptop1.png"),width: 80,),
        Gap(15),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Kate Morrison, Mexico",style: myStyle(16,Colors.grey,FontWeight.bold),),
            Row(
              children: [
                Icon(CupertinoIcons.hand_thumbsup_fill,color: Colors.grey,size: 25,),
                Text("157",style: myStyle(18,Colors.grey,FontWeight.bold),),
                Gap(10),
                Icon(CupertinoIcons.hand_thumbsdown_fill,color: Colors.grey,size: 25,),
                Text("157",style: myStyle(18,Colors.grey,FontWeight.bold),),
                Gap(10),
                Icon(Icons.more_vert,color: Colors.grey,)
              ],
            ),
          ],
        ),
        Row(
          children: [
            Icon(CupertinoIcons.check_mark_circled_solid,color: Colors.grey,size: 25,),
            Gap(5),
            Text("Certified Buyer - 2 months ago",style: myStyle(16,Colors.grey,),)
          ],
        ),
        Gap(20),
        Divider(),
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
                    "5",
                    style: myStyle(16, secondaryColor),
                  ),
                  Icon(
                    Icons.star_rate_rounded,
                    color: secondaryColor,
                  )
                ],
              ),
            ),
            Gap(20),
            Text("Best in the market!",style: myStyle(20,Colors.black,FontWeight.bold),)
          ],
        ),
        Gap(15),
        Text("$review2",style: myStyle(16),maxLines: 4,overflow: TextOverflow.ellipsis,),
        Gap(15),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Kate Morrison, Mexico",style: myStyle(16,Colors.grey,FontWeight.bold),),
            Row(
              children: [
                Icon(CupertinoIcons.hand_thumbsup_fill,color: Colors.grey,size: 25,),
                Text("157",style: myStyle(18,Colors.grey,FontWeight.bold),),
                Gap(10),
                Icon(CupertinoIcons.hand_thumbsdown_fill,color: Colors.grey,size: 25,),
                Text("157",style: myStyle(18,Colors.grey,FontWeight.bold),),
                Gap(10),
                Icon(Icons.more_vert,color: Colors.grey,)
              ],
            ),
          ],
        ),
        Row(
          children: [
            Icon(CupertinoIcons.check_mark_circled_solid,color: Colors.grey,size: 25,),
            Gap(5),
            Text("Certified Buyer - 2 months ago",style: myStyle(16,Colors.grey,),)
          ],
        ),
        Gap(20),
        Divider(),
        Row(
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.all(10),
                child: Center(child: Text("ADD TO CART",style: myStyle(24,Colors.black,FontWeight.bold),)),
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(10),
                color: Colors.black,
                child: Center(child: Text("BUY NOW", style: myStyle(24, secondaryColor),)),
              ),
            ),
          ],
        )
      ],
    );
  }
}











