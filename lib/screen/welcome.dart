import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WelcomePage extends StatefulWidget {
  WelcomePage({Key? key}) : super(key: key);

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  double paddingBottom = 36;
  double buttonHeight = 48;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.only(left: 28, right: 28, bottom: paddingBottom),
      child: CustomScrollView(
        physics: ClampingScrollPhysics(),
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Container(
                  height: Get.height - (paddingBottom + buttonHeight),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      getWelcomeImage(),
                      getVoca(),
                    ],
                  ),
                )
              ],
            ),
          ),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                buildNextButton(),
              ],
            ),
          )
        ],
      ),
    ));
  }

  Container getWelcomeImage() {
    return Container(
      child: Image.asset("assets/welcome.png", width: Get.width * 0.8),
    );
  }

  Widget getVoca() {
    return Column(
      children: [
        Text(
          "Voca",
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
        ),
        Container(
          margin: EdgeInsets.only(top: 10),
          child: Text(
            "Learn and improve vocabulary \nanywhere, any time.",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18, color: Color(0xff9d9d9d)),
          ),
        )
      ],
    );
  }

  Widget buildNextButton() {
    return Container(
      alignment: Alignment.center,
      height: buttonHeight,
      decoration: BoxDecoration(
        color: Color(0xff407bff),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        "Get started",
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
      ),
    );
  }
}
