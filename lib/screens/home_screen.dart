import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:healthy_pet_ui/components/home/BannerHome.dart';
import 'package:healthy_pet_ui/components/home/BottomNavigation.dart';
import 'package:healthy_pet_ui/components/home/Category.dart';
import 'package:healthy_pet_ui/components/home/DoctorList.dart';
import 'package:healthy_pet_ui/components/home/Search.dart';
import 'package:healthy_pet_ui/styles/appcolor.dart';
import 'package:hexcolor/hexcolor.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: HexColor(AppColor.white),
        bottomNavigationBar: const BottomNavigation(),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          bottomOpacity: 0.0,
          elevation: 0.0,
          // New parameter:
          scrolledUnderElevation: 0,
          title: Text('Hello,Human!',
              style: TextStyle(
                  fontSize: 24,
                  color: HexColor(AppColor.titleColor),
                  fontWeight: FontWeight.w800)),
          actions: <Widget>[
            Stack(children: [
              IconButton(
                icon: const Icon(FeatherIcons.shoppingBag),
                color: HexColor(AppColor.primaryColor),
                onPressed: () {},
              ),
              Positioned(
                  right: 5,
                  top: 4,
                  child: Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                          color: HexColor("#EF6497"),
                          borderRadius: BorderRadius.circular(25)),
                      child: Center(
                          child: Text('2',
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  color: HexColor(AppColor.white))))))
            ])
          ],
        ),
        body: const SafeArea(
            child: SingleChildScrollView(
                child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                    child: Column(children: <Widget>[
                      BannerHome(),
                      SizedBox(height: 22),
                      Search(),
                      SizedBox(height: 22),
                      CategoryHome(),
                      SizedBox(height: 22),
                      DoctorList()
                    ])))));
  }
}
