import 'package:flutter/material.dart';
import 'package:healthy_pet_ui/styles/appcolor.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:feather_icons/feather_icons.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: 52,
        decoration: BoxDecoration(
            color: HexColor(AppColor.inputColor),
            borderRadius: BorderRadius.circular(14)),
        child: TextField(
          decoration: InputDecoration(
              prefixIcon: const Icon(FeatherIcons.search),
              prefixIconColor: HexColor(AppColor.disableColor),
              border: InputBorder.none,
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              errorBorder: InputBorder.none,
              disabledBorder: InputBorder.none,
              contentPadding: const EdgeInsets.only(
                  left: 15, bottom: 11, top: 11, right: 15),
              hintStyle: TextStyle(
                  fontFamily: 'Manrope',
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                  color: HexColor(AppColor.disableColor)),
              hintText: "Find best vaccinate treatment..."),
        ));
  }
}
