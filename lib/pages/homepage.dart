
import 'package:carousel_slider/carousel_slider.dart';
import 'package:electronicproject/data/electro.dart';
import 'package:electronicproject/google%20fond.dart';
import 'package:electronicproject/pages/topdetail.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> images = [
    "assets/image/slider.jpg",
    "assets/image/slider1.jpg",
    "assets/image/slider2.jpeg",
    "assets/image/slider3.jpg",
    "assets/image/slider4.jpg",
  ];
  int _currentSlider = 0;
  @override
  Widget build(BuildContext context) {
    final TextEditingController _searchController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Image(image: AssetImage("assets/image/electronic_logo-removebg-preview.png"),height: 45),
            Text("Electronic", style: GoogleFonts.alegreyaSc(
              fontSize: 26,
              fontWeight: FontWeight.bold,)),
          ],
        ),
        actions: [
          Icon(Icons.notifications,color: Colors.black,size: 30,),
          Gap(5),
          Icon(Icons.menu_sharp,color: Colors.black,size: 30,),
          Gap(20)
        ],
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              color: secondaryColor,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),),
                child: Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: TextField(
                    controller: _searchController,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: ' search here',
                      hintStyle: GoogleFonts.oleoScript(
                        fontSize: 18,),
                      suffixIcon: IconButton(
                        icon: Icon(
                          Icons.search,
                        ),
                        onPressed: () {
                          // Handle search button press
                        },
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Gap(10),
            Container(
              width: double.infinity,
              height: 140,
              child: CarouselSlider(
                  items: images.map((f) {
                    return Image.asset(f);
                  }).toList(),
                  options: CarouselOptions(
                      initialPage: 0,
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 2),
                      enlargeCenterPage: true,
                      enlargeFactor: 0.3,
                      onPageChanged: (value, _) {
                        setState(() {
                          _currentSlider = value;
                        });
                      })),
            ),
            Gap(10),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Categories",style: myStyle(24,Colors.black,FontWeight.bold),),
                Row(
                  children: [
                    Text("More",style: myStyle(18),),
                    Icon(Icons.arrow_forward_ios_sharp,size: 15,),
                  ],
                )
              ],
            ),
            Gap(10),
            SizedBox(
              height: 80,
              child: ListView.builder(
                  itemCount: allCategories.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index){
                    return GestureDetector(
                      onTap: (){
                        Get.toNamed("/category");
                      },
                      child: Card(
                        margin: EdgeInsets.all(10),
                        child: Container(
                          width: 80,
                          decoration: BoxDecoration(
                            // color: CupertinoColors.systemGrey2,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Image(image: AssetImage("${allCategories[index].img}"),fit: BoxFit.cover,),
                        ),
                      ),
                    );
                  }),
            ),
            Gap(20),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Top Deals on Electronics",style: myStyle(20,Colors.black,FontWeight.bold),),
                Row(
                  children: [
                    Text("More",style: myStyle(18),),
                    Icon(Icons.arrow_forward_ios_sharp,size: 15,),
                  ],
                )
              ],
            ),
            Gap(20),
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
        ),
      ),
    );

  }
  buildindicator() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        for (int i = 0; i < images.length; i++)
          Container(
            margin: EdgeInsets.all(5),
            height: 7,
            width: i == _currentSlider ? 35 : 20,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: i == _currentSlider ? Colors.black : Colors.grey,
            ),
          ),
      ],
    );
  }
}
