import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:selectbooking/utils/app_constant.dart';
import 'package:selectbooking/utils/screen_dimensions.dart';

class DiverNameListView extends StatelessWidget {
  final String drivername;

  DiverNameListView({Key? key, required this.drivername}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              padding:
                  EdgeInsets.only(top: 10, bottom: 10, left: 25, right: 10),
              height: dimensions.screenHeight * 0.05,
              width: dimensions.screenWidth * 0.85,
              decoration: BoxDecoration(
                  color: AppConstant.greyColor, borderRadius: BorderRadius.circular(12)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    this.drivername,
                    style: AppConstant.headlineTextStyle16Normal,
                  ),
                  Container(
                    child: Icon(
                      Icons.arrow_circle_right_outlined,
                      color: AppConstant.textColor,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
