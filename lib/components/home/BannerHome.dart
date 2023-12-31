import 'package:flutter/material.dart';
import 'package:healthy_pet_ui/styles/appcolor.dart';
import 'package:hexcolor/hexcolor.dart';

class BannerHome extends StatelessWidget {
  const BannerHome({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 336 / 184,
      child: Container(
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
              color: HexColor(AppColor.primaryColor),
              borderRadius: BorderRadius.circular(14)),
          child: Stack(children: <Widget>[
            Image.asset('assets/images/bg_hero.png',
                width: double.maxFinite,
                height: double.maxFinite,
                fit: BoxFit.cover),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      RichText(
                          textAlign: TextAlign.left,
                          strutStyle: StrutStyle(height: 1.6),
                          text: const TextSpan(
                              text: 'Your ',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w400),
                              children: <TextSpan>[
                                TextSpan(
                                    text: 'Cathrine ',
                                    style:
                                        TextStyle(fontWeight: FontWeight.w700)),
                                TextSpan(
                                    text: 'will get\n',
                                    style:
                                        TextStyle(fontWeight: FontWeight.w400)),
                                TextSpan(text: 'vaccination '),
                                TextSpan(
                                    text: 'tomorrow\n',
                                    style:
                                        TextStyle(fontWeight: FontWeight.w700)),
                                TextSpan(
                                    text: 'at 7:00 am!',
                                    style:
                                        TextStyle(fontWeight: FontWeight.w700)),
                              ])),
                      SizedBox(height: 15),
                      TextButton(
                        style: TextButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          padding:
                              EdgeInsets.symmetric(vertical: 5, horizontal: 17),
                          backgroundColor:
                              HexColor(AppColor.white).withOpacity(.20),
                        ),
                        child: Text('See Details',
                            style: TextStyle(
                                fontSize: 14,
                                color: HexColor(AppColor.white),
                                fontWeight: FontWeight.w600)),
                        onPressed: () {},
                      )
                    ]))
          ])),
    );
  }
}
