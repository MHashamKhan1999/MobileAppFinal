import 'package:dotted_dashed_line/dotted_dashed_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:selectbooking/utils/app_constant.dart';
import 'package:selectbooking/utils/screen_dimensions.dart';



class CheckListCard extends StatefulWidget {
  const CheckListCard({Key? key}) : super(key: key);

  @override
  State<CheckListCard> createState() => _CheckListCard();
}

class _CheckListCard extends State<CheckListCard> {
  @override
  Widget build(BuildContext context) {
    final size = dimensions.getSize(context);
    return Container(
      padding: EdgeInsets.only(top: 20, left: 20, bottom: 20, right: 20),
      height: 100,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: AppConstant.whiteColor
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Driver"),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Mike Smith", style: AppConstant.headlineTextStyle16,),
              SizedBox(width: 100,),
              Container(
                padding: EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
                alignment: Alignment.center,
                height: 25,
                width: 120,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: AppConstant.blueColor
                ),
                child: Text("View Checklist",
                  style: TextStyle(
                      fontSize: 14,
                      color: AppConstant.whiteColor
                  ),
                ),
              ),

            ],
          ),
          Text("1235728"),





        ],
      ),
    );
  }
}
