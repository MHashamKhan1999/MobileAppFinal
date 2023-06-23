import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:selectbooking/Widgets/driver_names_list_view.dart';
import 'package:selectbooking/utils/app_constant.dart';
import 'package:selectbooking/utils/screen_dimensions.dart';



class DriverListView extends StatelessWidget {
  const DriverListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConstant.bgColor,
      appBar: AppBar(
        backgroundColor: AppConstant.bgColor,
        title: Row(
          children: [
            Container(
              child: InkWell(
                child: Icon(
                  Icons.arrow_circle_right_outlined,
                  color: AppConstant.textColor,
                ),
              ),
            ),
            SizedBox(width: dimensions.screenWidth*0.02,),
            Container(
              child: Text("Drivers", style: AppConstant.headlineTextStyle20),
            )
          ],
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: DiverNameListView(drivername: "John"),
            ),
            SizedBox(height: dimensions.screenHeight*0.02,),
            Container(
              child: DiverNameListView(drivername: "Mike Smith"),
            ),
            SizedBox(height: dimensions.screenHeight*0.02,),
            Container(
              child: DiverNameListView(drivername: "Wade Ivan"),
            ),
            SizedBox(height: dimensions.screenHeight*0.02,),
            Container(
              child: DiverNameListView(drivername: "Gilbert"),
            ),
            SizedBox(height: dimensions.screenHeight*0.02,),
            Container(
              child: DiverNameListView(drivername: "Liam Miles"),
            ),
            SizedBox(height: dimensions.screenHeight*0.02,),
            Container(
              child: DiverNameListView(drivername: "Ethan Lewis"),
            ),
            SizedBox(height: dimensions.screenHeight*0.02,),
            Container(
              child: DiverNameListView(drivername: "Milton Blake  "),
            ),

          ],


        ),
      ),
    );
  }
}
