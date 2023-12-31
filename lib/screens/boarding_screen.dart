import 'package:flutter/material.dart';
import 'package:healthy_pet_ui/screens/home_screen.dart';
import 'package:healthy_pet_ui/styles/appcolor.dart';
import 'package:hexcolor/hexcolor.dart';

class Boarding extends StatelessWidget {
  const Boarding({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 4), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (BuildContext context) => const HomeScreen()));
    });

    return Scaffold(
        extendBodyBehindAppBar: true,
        body: Stack(children: [
          Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/background.png'),
                      fit: BoxFit.cover))),
          Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 90),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Image.asset('assets/images/logo.png'),
                  SizedBox(width: 8),
                  Text('healthypet',
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                          color: HexColor(AppColor.white)))
                ]),
                SizedBox(height: 45),
                RichText(
                    textAlign: TextAlign.center,
                    strutStyle: StrutStyle(height: 3.3),
                    text: const TextSpan(
                        text: 'Helping you \n',
                        style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.w300),
                        children: <TextSpan>[
                          TextSpan(text: 'to keep '),
                          TextSpan(
                              text: 'your bestie \n',
                              style: TextStyle(fontWeight: FontWeight.w600)),
                          TextSpan(text: 'stay healthy!')
                        ]))
              ])
        ]));
  }
}
