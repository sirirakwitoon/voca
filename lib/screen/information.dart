import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class InformationPage extends StatefulWidget {
  InformationPage({Key? key}) : super(key: key);

  @override
  _InformationPageState createState() => _InformationPageState();
}

class _InformationPageState extends State<InformationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: () => Get.focusScope!.unfocus(),
        child: Padding(
          padding: EdgeInsets.only(
              left: 28, right: 28, bottom: 36, top: Get.statusBarHeight / 2),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildTitlePage(),
              buildGenderSelection(),
              inputName(),
              ageSelect(),
              nextButton()
            ],
          ),
        ),
      ),
    );
  }

  Widget ageSelect() {
    return TextFormField(
      onTap: () {
        Get.bottomSheet(Container(
          height: 350,
          padding: EdgeInsets.all(32),
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ...["15-20", "21-25", "26-30", "31-40"].map((e) => Container(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Text(e, style: TextStyle(fontSize: 18),)))
            ],
          ),
        ));
      },
      decoration: InputDecoration(
        suffixIcon: Icon(
          Icons.keyboard_arrow_down_outlined,
          color: Color(0xff407bff),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xff407bff),
          ),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xff407bff),
          ),
        ),
        labelText: "Your age",
        labelStyle: TextStyle(
          color: Color(0xff9d9d9d),
        ),
      ),
    );
  }

  TextFormField inputName() {
    return TextFormField(
      decoration: InputDecoration(
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xff407bff),
          ),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xff407bff),
          ),
        ),
        labelText: "Your name",
        labelStyle: TextStyle(
          color: Color(0xff9d9d9d),
        ),
      ),
    );
  }

  Widget buildGenderSelection() {
    return Container(
      margin: EdgeInsets.only(top: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          getGenderSelect("assets/male.png", "Male"),
          getGenderSelect("assets/female.png", "Female"),
          // getGenderSelectFemale(),
        ],
      ),
    );
  }

  Container getGenderSelect(String path, String gender) {
    return Container(
      padding: EdgeInsets.only(left: 20, right: 20, bottom: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: Color(0xff9d9d9d),
          width: 1,
        ),
      ),
      child: Column(
        children: [
          Image.asset(
            path,
            width: Get.width * 0.3,
          ),
          Text(
            gender,
            style: TextStyle(
              fontSize: 18,
              color: Color(
                0xff9d9d9d,
              ),
            ),
          )
        ],
      ),
    );
  }

  Column buildTitlePage() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Who are you?",
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        ),
        Text(
          "Tell us about yourself",
          style: TextStyle(fontSize: 14, color: Color(0xff9d9d9d)),
        ),
      ],
    );
  }

  Widget nextButton() {
    return GestureDetector(
      onTap: () {
        Get.bottomSheet(Container(
          color: Colors.white,
          width: Get.width,
          height: 200,
          child: Text("hello"),
        ));
      },
      child: Container(
        key: Key("next-button"),
        alignment: Alignment.center,
        height: 48,
        decoration: BoxDecoration(
          color: Color(0xff407bff),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Text(
          "Next",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
