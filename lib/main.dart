import 'package:flutter/material.dart';
import 'package:selectbooking/Screens/Driver/login/checklist_screen.dart';
import 'package:selectbooking/Screens/Driver/login/dashboard_screen.dart';
import 'package:selectbooking/Screens/Driver/login/driver_login.dart';
import 'package:get/get.dart';
import 'package:selectbooking/Screens/Driver/rides/today_ride.dart';
import 'package:selectbooking/Screens/Driver/rides/tomorrow_rides.dart';
import 'package:selectbooking/Screens/Driver/rides/total_rides.dart';
import 'package:selectbooking/Screens/Driver/rides/unassigned_rides.dart';
import 'package:selectbooking/Screens/admin/checklist_admin.dart';
import 'package:selectbooking/Screens/admin/checklist_admin_screen.dart';
import 'package:selectbooking/Screens/admin/dashboard.dart';
import 'package:selectbooking/Screens/admin/driver_list.dart';
import 'package:selectbooking/Screens/admin/total_rides_for_admin.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Booking App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(


      ),
      // home: TotalRides(),
      home: AdminDriverCheckList(),
      // home: DriverCheckList(),
      // home: DriverLogin(),
    );
  }
}
