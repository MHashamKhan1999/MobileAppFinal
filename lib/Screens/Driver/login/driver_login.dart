// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:selectbooking/utils/app_constant.dart';
import 'package:selectbooking/utils/screen_dimensions.dart';

class DriverLogin extends StatelessWidget {
  const DriverLogin({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    print("Height of Screen: " + dimensions.height15.toString());
    print("Width of Screen: " + dimensions.screenWidth.toString());


    return Scaffold(
      backgroundColor: AppConstant.bgColor,
      appBar: AppBar(
        backgroundColor: AppConstant.bgColor,
        title: Container(
          height: (dimensions.screenHeight*0.03),
          child: Row(
            children: [
              InkWell(
                child: Icon(Icons.menu,color: AppConstant.textColor,),
              )
            ],
          ),
        ),
      ),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Enter your\nCompany Code", style: AppConstant.headlineTextStyle20, textAlign: TextAlign.center),
              SizedBox(height: (dimensions.screenHeight*0.03)),
              Container(
                padding: const EdgeInsets.only(left: 20, right: 20, bottom: 5.0, top: 5.0),
                width: (dimensions.screenWidth*0.46),
                height: dimensions.screenHeight*0.05,
                decoration: BoxDecoration(
                    color: AppConstant.whiteColor,
                    borderRadius: BorderRadius.all(Radius.circular(5.0) ),
                    boxShadow: [BoxShadow(color: Colors.grey, offset: Offset(0.0,2.0), blurRadius: 5.0, spreadRadius: 0.2)]
                ),
                child: TextField(
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      decoration: TextDecoration.underline
                  ),

                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "__________________________",
                    focusColor: Colors.lightGreen,
                    hintStyle: (
                        TextStyle(color: Colors.grey.shade400, fontSize: 16.0, decoration: TextDecoration.underline)

                    ),
                  ),

                ),

              ),
            ],
          ),

      ),
      bottomNavigationBar: Container(
        alignment: Alignment.bottomCenter,
        padding: EdgeInsets.only(bottom: 15.0),
        height: (dimensions.screenWidth*0.2),
        child: Column(
          children: [
            Text("Privacy Policy" , style: TextStyle(
                fontSize: 22,
                color: AppConstant.dirtyBlue,
                decoration: TextDecoration.underline
            ),
            ),
            SizedBox(height: dimensions.height05),
            Text("v2.8.178" , style: TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.w400,
                color: AppConstant.dirtyBlue,
                decoration: TextDecoration.underline
            ),
            ),
            SizedBox(height: (dimensions.screenHeight*0.01)),
            Container(
              width: (dimensions.screenWidth*0.46),
              height: dimensions.screenWidth*0.01,
              child: Divider(
                indent: 5,
                color: Colors.black,
                thickness: 2,
                endIndent: 5,
              ),
            )
          ],
        )
      ),


    );
  }
}
