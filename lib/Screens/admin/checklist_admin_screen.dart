import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_profile_picture/flutter_profile_picture.dart';
import 'package:selectbooking/Widgets/checklist_tabs.dart';
import 'package:selectbooking/Widgets/driver_names_list_view.dart';
import 'package:selectbooking/utils/app_constant.dart';
import 'package:selectbooking/utils/screen_dimensions.dart';
import 'package:simple_circular_progress_bar/simple_circular_progress_bar.dart';

class AdminDriverCheckList extends StatelessWidget {
  const AdminDriverCheckList({Key? key}) : super(key: key);

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
            Container(
              padding: EdgeInsets.only(top: 15, bottom: 15),
              width: dimensions.screenWidth*0.85,
              decoration: BoxDecoration(
                  color: AppConstant.whiteColor,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    offset: const Offset(
                      2.0,
                      2.0,
                    ),
                    blurRadius: 10.0,
                    spreadRadius: 1.0,
                  ), //BoxShadow
                  BoxShadow(
                    color: Colors.white,
                    offset: const Offset(0.0, 0.0),
                    blurRadius: 0.0,
                    spreadRadius: 0.0,
                  ), //BoxShadow
                ],
              ),
              margin: const EdgeInsets.only(top:30),
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(width: dimensions.screenWidth*0.05,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Driver"),
                      SizedBox(height: dimensions.screenWidth*0.001),
                      Text("Mike Smith", style: AppConstant.headlineTextStyle20,),
                      SizedBox(height: dimensions.screenWidth*0.001),
                      Text("1235728", style: AppConstant.headlineTextStyle16Normal,)
                    ],
                  ),
                  // Example 16
                  SizedBox(width: dimensions.screenWidth*0.35,),
                  Column(
                    children: [
                      Container(
                        child: SimpleCircularProgressBar(
                          mergeMode: true,
                          size: 50,
                          maxValue: 100,
                          backStrokeWidth: 10,
                          progressStrokeWidth: 10,
                          progressColors: [
                            Colors.lightBlue,
                            AppConstant.blueColor,

                          ],
                          backColor: AppConstant.greyColor,
                          onGetText: (double value) {
                            return Text('${value.toInt()}%');
                          },
                        ),
                      ),
                      SizedBox(height: dimensions.screenWidth*0.02),
                      Text("Condition",
                        style: TextStyle(
                          fontSize: 14,
                          color: AppConstant.textColor
                        ),
                      ),
                    ],
                  ),

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