import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:selectbooking/Widgets/driver_names_list_view.dart';
import 'package:selectbooking/utils/app_constant.dart';
import 'package:selectbooking/utils/screen_dimensions.dart';



class DashboardAdmin extends StatelessWidget {
  const DashboardAdmin({Key? key}) : super(key: key);

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
              child: DiverNameListView(drivername: "LEAD"),
            ),
            SizedBox(height: dimensions.screenHeight*0.02,),
            Container(
              child: DiverNameListView(drivername: "Drivers"),
            ),
            SizedBox(height: dimensions.screenHeight*0.02,),
            Container(
              child: DiverNameListView(drivername: "Total Rides"),
            ),
            SizedBox(height: dimensions.screenHeight*0.02,),
            Container(
              child: DiverNameListView(drivername: "Checklist"),
            ),
            SizedBox(
              height: dimensions.screenHeight * 0.05,
            ),
            Container(
              width: dimensions.screenWidth*0.8,
              child: Row(
                children: [
                  Text("Sign Out", style: AppConstant.headlineTextStyle20,),
                  Icon(Icons.login_outlined)
                ],
              ),
            )


          ],


        ),
      ),
    );
  }
}
