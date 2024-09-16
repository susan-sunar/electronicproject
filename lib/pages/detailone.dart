
import 'package:electronicproject/google%20fond.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
class DetailOne extends StatelessWidget {
  const DetailOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Available offers",
          style: myStyle(18, Colors.black, FontWeight.bold),
        ),
        Gap(10),
        Row(
          children: [
            Icon(CupertinoIcons.tag_solid),
            Gap(8),
            Flexible(
              child: Text(
                "$offer1",
                style: myStyle(16),
              ),
            ),
          ],
        ),
        Gap(8),
        Row(
          children: [
            Icon(CupertinoIcons.tag_solid),
            Gap(8),
            Flexible(
              child: Text(
                "$offer2",
                style: myStyle(16),
              ),
            ),
          ],
        ),
        Gap(8),
        Row(
          children: [
            Icon(CupertinoIcons.tag_solid),
            Gap(8),
            Flexible(
              child: Text(
                "$offer3",
                style: myStyle(16),
              ),
            ),
          ],
        ),
        Gap(20),
        Row(
          children: [
            Gap(30),
            Text(
              "+5 more",
              style: myStyle(16, Colors.black, FontWeight.bold),
            )
          ],
        ),
        Gap(20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 110,
              height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(width: 1),
                color: Colors.grey.withOpacity(0.2),
              ),
              child: Center(
                child: Text("FREE Delivery"),
              ),
            ),
            Container(
              width: 110,
              height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(width: 1),
                color: Colors.grey.withOpacity(0.2),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("No cost EMI"),
                  Text("\u20B922,212/month")
                ],
              ),
            ),
            Container(
              width: 110,
              height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(width: 1),
                color: Colors.grey.withOpacity(0.2),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Product"),
                  Text("Exchange"),
                ],
              ),
            ),
          ],
        ),
        Gap(30),
        Divider(),
        Row(
          children: [
            Expanded(
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.reply,
                        size: 30,
                      ),
                      Text(
                        "Share",
                        style: myStyle(17),
                      )
                    ],
                  ),
                )),
            SizedBox(
                height: 30,
                child: VerticalDivider(
                  width: 0.5,
                  color: Colors.grey,
                )),
            Expanded(
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.compare,
                        size: 30,
                      ),
                      Text(
                        "Add to Compare",
                        style: myStyle(17),
                      )
                    ],
                  ),
                ))
          ],
        ),
        Divider(),
        Divider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Deliver to Thimphu-309000",
              style: myStyle(16),
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
        Divider(),
        Gap(30),
        Text(
          "Delivery by",
          style: myStyle(18),
        ),
        Text(
          "29 Sep, Monday | Free \u20B940",
          style: myStyle(18, Colors.black, FontWeight.bold),
        ),
        Gap(10),
        Divider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "View Details",
              style: myStyle(17, Colors.black, FontWeight.bold),
            ),
            Icon(
              Icons.chevron_right_rounded,
              size: 30,
            )
          ],
        ),
        Gap(10),
        Divider(),
        Text(
          "Easy Payment Method",
          style: myStyle(16, Colors.black, FontWeight.bold),
        ),
        Gap(10),
        Text(
          "\u{2022} No Cost EMI from ?22,212/month",
          style: myStyle(16),
        ),
        Text(
          "\u{2022} Cash on Delivery",
          style: myStyle(16),
        ),
        Text(
          "\u{2022} Net Banking & Credit/Debit/ATM Card",
          style: myStyle(16),
        ),
        Gap(20),
        Divider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "View Details",
              style: myStyle(17, Colors.black, FontWeight.bold),
            ),
            Icon(
              Icons.chevron_right_rounded,
              size: 30,
            )
          ],
        ),
        Gap(10),
        Divider(),
        Text(
          "Highlights",
          style: myStyle(16, Colors.black, FontWeight.bold),
        ),
        Gap(10),
        Text(
          "\u{2022} Light Laptop with Optical Disc Drive",
          style: myStyle(16),
        ),
        Text(
          "\u{2022} 16 inch Quad HD LED Backlit IPS Retina Display (500 nits Brightness, Wide Color(P3).True Tone Technology)",
          style: myStyle(16),
        ),
        Gap(10),
        Row(
          children: [
            Icon(
              Icons.apple,
              size: 30,
            ),
            Gap(5),
            Text("1 Year Onsite Warrenty"),
            Gap(3),
            Text(
              "Know more",
              style: myStyle(16, Colors.black, FontWeight.bold),
            ),
          ],
        ),
        Gap(20),
        Divider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "View Details",
              style: myStyle(17, Colors.black, FontWeight.bold),
            ),
            Icon(
              Icons.chevron_right_rounded,
              size: 30,
            )
          ],
        ),
      ],
    );
  }
}
