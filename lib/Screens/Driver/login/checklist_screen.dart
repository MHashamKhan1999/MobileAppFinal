import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_profile_picture/flutter_profile_picture.dart';
import 'package:selectbooking/Widgets/checklist_tabs.dart';
import 'package:selectbooking/Widgets/driver_names_list_view.dart';
import 'package:selectbooking/utils/app_constant.dart';
import 'package:selectbooking/utils/screen_dimensions.dart';

class DriverCheckList extends StatelessWidget {
  const DriverCheckList({Key? key}) : super(key: key);

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
              width: dimensions.screenWidth * 0.02,),
            Container(
              child: Text("Checklist", style: AppConstant.headlineTextStyle20),
            )
          ],
        ),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Profile Picture Code
            Container(
              margin: const EdgeInsets.only(top:30, left: 35),
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
                  SizedBox(width: dimensions.screenWidth*0.05,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Mike Smith", style: AppConstant.headlineTextStyle20,),
                      Text("mike.smith@gmail.com", style: AppConstant.headlineTextStyle16Normal,)
                    ],
                  )

                ],
              ),
            ),
            SizedBox(height: dimensions.width30,),
            Container(
              width: dimensions.screenWidth,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: dimensions.screenWidth*0.72,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Text("Yes"),
                        SizedBox(width: dimensions.screenWidth*0.1,),
                        const Text("No"),
                      ],
                    ),
                  ),
                  DiverNameWithCheckBox(drivername: 'Car Air Conditioner',),
                  SizedBox(height: dimensions.screenHeight*0.02,),
                  DiverNameWithCheckBox(drivername: 'Tyres & Wheel Nuts',),
                  SizedBox(height: dimensions.screenHeight*0.02,),
                  DiverNameWithCheckBox(drivername: 'Lights & Indicators',),
                  SizedBox(height: dimensions.screenHeight*0.02,),
                  DiverNameWithCheckBox(drivername: 'Oil & Fluid Levels',),
                  SizedBox(height: dimensions.screenHeight*0.02,),
                  DiverNameWithCheckBox(drivername: 'Coupling Security',),
                  SizedBox(height: dimensions.screenHeight*0.02,),
                  DiverNameWithCheckBox(drivername: 'Battery',),
                  SizedBox(height: dimensions.screenHeight*0.02,),
                  DiverNameWithCheckBox(drivername: 'Fuel',),
                  SizedBox(height: dimensions.screenHeight*0.02,),
                  DiverNameWithCheckBox(drivername: 'Brake Lines',)
                ],
              ),
            )


          ],
        ),
      ),
    );
  }
}