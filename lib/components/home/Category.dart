import 'package:flutter/material.dart';
import 'package:healthy_pet_ui/models/category_model.dart' as services;
import 'package:healthy_pet_ui/styles/appcolor.dart';
import 'package:hexcolor/hexcolor.dart';

class CategoryHome extends StatefulWidget {
  const CategoryHome({super.key});

  @override
  State<CategoryHome> createState() => _CategoryHomeState();
}

class _CategoryHomeState extends State<CategoryHome> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 36,
        child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => TextButton(
                onPressed: () {
                  setState(() {
                    this._index = index;
                  });
                },
                style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    backgroundColor: index == this._index
                        ? HexColor(AppColor.primaryColor)
                        : HexColor(AppColor.inputColor)),
                child: Text(services.CategoryModel.all()[index],
                    style: TextStyle(
                        fontFamily: 'Manrope',
                        fontSize: 13,
                        color: index == this._index
                            ? HexColor(AppColor.white)
                            : HexColor(AppColor.disableColor),
                        fontWeight: FontWeight.w700))),
            separatorBuilder: (context, index) => SizedBox(width: 10),
            itemCount: services.CategoryModel.all().length));
  }
}
