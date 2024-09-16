
import 'package:electronicproject/google%20fond.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class OpeningPage extends StatefulWidget {
  const OpeningPage({super.key});

  @override
  _OpeningPageState createState() => _OpeningPageState();
}

class _OpeningPageState extends State<OpeningPage> {
  bool _showPassword = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.black38, Colors.black])),
        // margin: EdgeInsets.all(10),
        child: Column(
          children: [
            Gap(170),
            Row(
              children: [
                Container(
                    width: MediaQuery.of(context).size.width * 0.3,
                    child: Image(
                      image: AssetImage("assets/image/electronic_logo-removebg-preview.png"),
                      fit: BoxFit.cover,
                    )),
                Gap(10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Suzanna",
                      style: GoogleFonts.alegreyaSc(
                          fontSize: 39,
                          fontWeight: FontWeight.bold,
                          color: secondaryColor),
                    ),
                    Text(
                      "Electronic",
                      style: GoogleFonts.alegreyaSc(
                          fontSize: 39,
                          fontWeight: FontWeight.bold,
                          color: secondaryColor),
                    ),
                  ],
                )
              ],
            ),
            Gap(140),
            Text(
              "We Provide The Best Electronic",
              style: myStyle(23, secondaryColor, FontWeight.bold),
            ),
            Text(
              "Products From Great Brands",
              style: myStyle(23, secondaryColor, FontWeight.bold),
            ),
            Gap(20),
            Text(
              "You will be able able to find a wide selection of",
              style: myStyle(
                17,
                secondaryColor,
              ),
            ),
            Text(
              "electronics from top brands",
              style: myStyle(
                17,
                secondaryColor,
              ),
            ),
            Gap(40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center, // Add this
              children: [
                Container(
                  width: 20,
                  height: 5,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.grey),
                ),
                Gap(5),
                Container(
                  width: 30,
                  height: 7,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: secondaryColor),
                ),
                Gap(5),
                Container(
                  width: 20,
                  height: 5,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.grey),
                ),
              ],
            ),
            Gap(70),
            GestureDetector(
              onTap: () {
                login();
              },
              child: Container(
                width: 50,
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Icon(Icons.arrow_forward_outlined,
                      color: Colors.black, size: 30),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Future<dynamic> login() {
    return Get.bottomSheet(
      isScrollControlled: true,
      SingleChildScrollView(
        child: Container(
          height: 550,
          padding: EdgeInsets.all(30),
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Login Your account",
                  style: myStyle(20, Colors.black, FontWeight.bold)),
              Gap(5),
              Text("Please enter your Email ID to",
                  style: myStyle(16, Colors.black.withOpacity(0.5))),
              Text("login/sign up before you place the order",
                  style: myStyle(16, Colors.black.withOpacity(0.5))),
              Gap(30),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                ),
              ),
              Gap(10),
              TextField(
                obscureText: !_showPassword,
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                  suffixIcon: IconButton(
                    icon: Icon(_showPassword
                        ? Icons.visibility
                        : Icons.visibility_off),
                    onPressed: () {
                      setState(() {
                        _showPassword = !_showPassword;
                      });
                    },
                  ),
                ),
              ),
              Gap(20),
              GestureDetector(
                onTap: (){
                  Get.offAllNamed("/home");
                },
                child: Container(
                  width: double.infinity,
                  height: 55,
                  padding: EdgeInsets.only(left: 10, right: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.black),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "SIGN IN",
                        style: myStyle(
                          18,
                          secondaryColor,
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_rounded,
                        color: secondaryColor,
                      )
                    ],
                  ),
                ),
              ),
              Gap(20),
              Center(child: Text("Reset password")),
              Gap(80),
              InkWell(
                onTap: () {
                  registration();
                },
                child: Container(
                  width: double.infinity,
                  height: 55,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.grey,
                  ),
                  child: Center(
                    child: Text(
                      "Create an Account",
                      style: myStyle(20, Colors.black, FontWeight.bold),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Future<dynamic> registration() {
    return Get.bottomSheet(
        isScrollControlled: true,
        SingleChildScrollView(
          child: Container(
            width: double.infinity,
            height: 550,
            padding: EdgeInsets.all(30),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Create an account",
                    style: myStyle(20, Colors.black, FontWeight.bold)),
                Gap(5),
                Text("Already have an account? Sign in",
                    style: myStyle(16, Colors.black.withOpacity(0.5))),
                Gap(30),
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: 'First Name',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    SizedBox(width: 10), // add some space between the two fields
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Last Name',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ],
                ),
                Gap(10),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(),
                  ),
                ),
                Gap(10),
                TextField(
                  obscureText: !_showPassword,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(),
                    suffixIcon: IconButton(
                      icon: Icon(_showPassword
                          ? Icons.visibility
                          : Icons.visibility_off),
                      onPressed: () {
                        setState(() {
                          _showPassword = !_showPassword;
                        });
                      },
                    ),
                  ),
                ),
                Gap(20),
                GestureDetector(
                  onTap: (){
                    Get.bottomSheet(
                        Container(
                          height: 400,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(30),
                                  topLeft: Radius.circular(30)
                              )
                          ),
                          child: Column(
                            children: [
                              Image(image: AssetImage("assets/image/trick.jpg")),
                              Gap(10),
                              Text("REGISTER SUCCESS",style: myStyle(20,Colors.black,FontWeight.bold),),
                              Gap(10),
                              Center(
                                  child:
                                  Text("By tapping Sign Up button you accept the terms")),
                              Center(child: Text("and privacy of this app")),
                              Gap(20),
                              TextButton(
                                  onPressed: (){
                                    Get.offAllNamed("/home");
                                  }, child: Text("CLOSE",style: myStyle(20,),))
                            ],
                          ),
                        )
                    );
                  },
                  child: Container(
                    width: double.infinity,
                    height: 55,
                    padding: EdgeInsets.only(left: 10, right: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.black),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "SIGN UP",
                          style: myStyle(
                            18,
                            secondaryColor,
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_rounded,
                          color: secondaryColor,
                        ),
                      ],
                    ),
                  ),
                ),
                Gap(10),
                Center(
                    child:
                    Text("By tapping Sign Up button you accept the terms")),
                Center(child: Text("and privacy of this app")),
                Gap(50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                        onTap: () {
                          Get.back();
                        },
                        child: Icon(
                          Icons.arrow_back,
                          size: 30,
                        )),
                    Gap(10),
                    Text(
                      "Back to Sign in page",
                      style: myStyle(20, Colors.black, FontWeight.bold),
                    )
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
