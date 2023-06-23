import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:selectbooking/Widgets/rides_card.dart';
import 'package:selectbooking/utils/app_constant.dart';
import 'package:selectbooking/utils/screen_dimensions.dart';


class UnassignedRides extends StatelessWidget {
  const UnassignedRides({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConstant.bgColor,
      appBar: AppBar(
        backgroundColor: AppConstant.bgColor,
        elevation: 0,
        title: Row(
          children: [
            Container(
              child: InkWell(
                child: Icon(
                  Icons.arrow_circle_left_outlined,
                  color: AppConstant.textColor,
                ),
              ),
            ),
            SizedBox(
              width: dimensions.screenWidth * 0.02,
            ),
            Container(
              child: Text("Rides", style: AppConstant.headlineTextStyle20),
            )
          ],
        ),
      ),
      body: Container(
        width: dimensions.screenWidth,
        margin: EdgeInsets.only(top: 30),
        decoration: BoxDecoration(
            color: AppConstant.greyColor,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(50), topRight:Radius.circular(50) )
        ),
        child: Container(
          padding: EdgeInsets.only(left: 30, top: 20,right: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Unassigned Rides", style: AppConstant.headlineTextStyle20,),
              SizedBox(height: dimensions.screenHeight*0.05,),
              RidesCard(),
              SizedBox(height: dimensions.screenHeight*0.05,),
              RidesCard(),
              SizedBox(height: dimensions.screenHeight*0.05,),
              RidesCard(),
            ],
          ),
        ),
      ),
    );
  }
}
