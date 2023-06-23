import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_profile_picture/flutter_profile_picture.dart';
import 'package:selectbooking/Widgets/driver_names_list_view.dart';
import 'package:selectbooking/utils/app_constant.dart';
import 'package:selectbooking/utils/screen_dimensions.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

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
                  Icons.arrow_circle_left_outlined,
                  color: AppConstant.textColor,
                ),
              ),
            ),
            SizedBox(
              width: dimensions.screenWidth * 0.02,
            ),
            Container(
              child: Text("Dashboard", style: AppConstant.headlineTextStyle20),
            )
          ],
        ),
      ),
      body: Container(
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          // Profile Picture Code
          Container(
            margin: const EdgeInsets.only(top: 30, left: 35),
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  child: const ProfilePicture(
                    name: 'Amad Hasan',
                    role: 'ADMINISTRATOR',
                    radius: 60,
                    fontsize: 21,
                    tooltip: true,
                    img: 'https://avatars.githubusercontent.com/u/37553901?v=4',
                  ),
                ),
                SizedBox(
                  width: dimensions.screenWidth * 0.05,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Mike Smith",
                      style: AppConstant.headlineTextStyle20,
                    ),
                    Text(
                      "mike.smith@gmail.com",
                      style: AppConstant.headlineTextStyle16Normal,
                    ),
                    SizedBox(height: dimensions.screenHeight * 0.02),
                    Container(
                        width: 120,
                        height: 35,
                        decoration: BoxDecoration(
                            color: AppConstant.blueColor,
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Edit Profile",
                              style: AppConstant.headlineTextStyle18,
                            ),
                          ],
                        ))
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: dimensions.screenHeight * 0.05,
          ),
          Container(
            width: dimensions.screenWidth,
            child: Column(
              children: [
                DiverNameListView(drivername: "Today’s Ride"),
                SizedBox(
                  height: dimensions.screenHeight * 0.02,
                ),
                DiverNameListView(drivername: "Tomorrow’s Ride"),
                SizedBox(
                  height: dimensions.screenHeight * 0.02,
                ),
                DiverNameListView(drivername: "Unassigned Ride"),
                SizedBox(
                  height: dimensions.screenHeight * 0.02,
                ),
                DiverNameListView(drivername: "Total Rides"),
                SizedBox(
                  height: dimensions.screenHeight * 0.02,
                ),
                DiverNameListView(drivername: "CheckList"),
                SizedBox(
                  height: dimensions.screenHeight * 0.05,
                ),
              ],
            ),
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
        ]),
      ),
    );
  }
}
