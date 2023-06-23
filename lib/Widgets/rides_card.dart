import 'package:dotted_dashed_line/dotted_dashed_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:selectbooking/utils/app_constant.dart';
import 'package:selectbooking/utils/screen_dimensions.dart';



class RidesCard extends StatefulWidget {
  const RidesCard({Key? key}) : super(key: key);

  @override
  State<RidesCard> createState() => _RidesCardState();
}

class _RidesCardState extends State<RidesCard> {
  @override
  Widget build(BuildContext context) {
    final size = dimensions.getSize(context);
    return Container(
      padding: EdgeInsets.only(top: 20, left: 20, bottom: 20, right: 20),
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: AppConstant.whiteColor
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Gill Smith", style: AppConstant.headlineTextStyle16,),
                  Text("1800 Century Park East.",
                    style: TextStyle(
                      fontSize: 12,
                      color: AppConstant.textColor
                    ),
                  ),
                  Text("Los Angeles, CA 90067, USA",
                      style: TextStyle(
                          fontSize: 12,
                          color: AppConstant.textColor
                      ),
                  )
                ],
              ),
              SizedBox(width: 20,),
              Container(
                margin: EdgeInsets.all(0),
                padding: EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
                alignment: Alignment.center,
                height: 25,
                width: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: AppConstant.blueColor
                ),
                child: Text(
                  "Call",
                  style: TextStyle(
                    fontSize: 14,
                    color: AppConstant.whiteColor
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
                alignment: Alignment.center,
                height: 25,
                width: 90,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: AppConstant.blueColor
                ),
                child: Text("Directions",
                style: TextStyle(
                    fontSize: 14,
                    color: AppConstant.whiteColor
                ),
                ),
              )
            ],
          ),
          SizedBox(height: 05,),
          Divider(
            endIndent: 0,
            indent: 0,
            color: Colors.black,
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(Icons.location_on_rounded),
              // SizedBox(width: 20,),
              Text("345 Cityhall Park", style: AppConstant.headlineTextStyle16,),
              SizedBox(width: 100,),
              Text("9:40 PM")
            ],
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(Icons.location_on_rounded),
              Text("Sunrise Hospital",style: AppConstant.headlineTextStyle16,),
              SizedBox(width: 100,),
              Text("10:10 PM")
            ],
          )


        ],
      ),
    );
  }
}
