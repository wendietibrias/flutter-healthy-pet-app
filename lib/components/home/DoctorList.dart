import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:healthy_pet_ui/models/doctors_model.dart';
import 'package:healthy_pet_ui/styles/appcolor.dart';
import 'package:hexcolor/hexcolor.dart';

class DoctorList extends StatefulWidget {
  const DoctorList({super.key});

  @override
  State<DoctorList> createState() => _DoctorListState();
}

class _DoctorListState extends State<DoctorList> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (context, index) => _doctor(doctorItems[index]),
        separatorBuilder: (context, index) => const SizedBox(height: 10),
        itemCount: doctorItems.length);
  }

  Container _doctor(DoctorModel doctorModel) {
    return Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: HexColor(AppColor.white),
            boxShadow: [
              BoxShadow(
                  color: const Color(0xFF35385A).withOpacity(.12),
                  blurRadius: 30,
                  offset: const Offset(0, 2))
            ],
            borderRadius: BorderRadius.circular(14)),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
          Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
              child: Image.asset("assets/images/${doctorModel.image}",
                  width: 88, height: 103)),
          SizedBox(width: 20),
          Flexible(
              fit: FlexFit.tight,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(doctorModel.name,
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w700,
                          color: HexColor(AppColor.titleColor))),
                  SizedBox(height: 8),
                  RichText(
                      text: TextSpan(
                          text: "Services : ${doctorModel.services.join(", ")}",
                          style: TextStyle(
                              fontSize: 14,
                              fontFamily: 'Manrope',
                              fontWeight: FontWeight.w500,
                              color: HexColor(AppColor.titleColor)))),
                  SizedBox(height: 5),
                  Row(children: [
                    Icon(FeatherIcons.mapPin,
                        size: 15, color: HexColor(AppColor.disableColor)),
                    SizedBox(width: 5),
                    Text("${doctorModel.distance} km",
                        style: TextStyle(
                            color: HexColor(AppColor.disableColor),
                            fontSize: 14,
                            fontFamily: 'Manrope'))
                  ]),
                  SizedBox(height: 5),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text('Available for',
                            style: TextStyle(
                                color: HexColor(AppColor.activeColor),
                                fontSize: 14,
                                fontWeight: FontWeight.w700)),
                        Row(children: [
                          Image.asset("assets/images/cat.png"),
                          SizedBox(width: 3),
                          Image.asset("assets/images/dog.png"),
                        ])
                      ])
                ],
              ))
        ]));
  }
}
