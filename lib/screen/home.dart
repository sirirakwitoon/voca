import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:voca/routes.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: () => Get.focusScope!.unfocus(),
        child: Padding(
          padding: EdgeInsets.only(
              left: 28, right: 28, bottom: 36, top: Get.statusBarHeight / 2),
          child: CustomScrollView(
            physics: ClampingScrollPhysics(),
            slivers: [
              SliverList(
                  delegate: SliverChildListDelegate([
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    title(),
                    builRecommend(),
                    favorit(),
                    voca(),
                  ],
                ),
              ])),
              SliverFillRemaining(
                hasScrollBody: false,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget title() {
  return Container(
    child: Column(
      key: Key("title"),
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Aphirat",
          style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Color(0xff407bff)),
        ),
        Container(
          margin: EdgeInsets.only(top: 24),
          child: Text(
            "Recommend",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
          ),
        ),
      ],
    ),
  );
}

Widget builRecommend() {
  return Container(
    margin: EdgeInsets.all(4),
    child: Row(
      children: [
        recommend("assets/cat2.jpeg", "Stock", "20", "145"),
        recommend("assets/cat3.jpeg", "ThePower", "50", "1.2k"),
      ],
    ),
  );
}

GestureDetector recommend(
    String image, String name, String book, String download) {
  return GestureDetector(
    child: Container(
      padding: EdgeInsets.only(right: 20, bottom: 8, top: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        // border: Border.all(),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child:
                  Image.asset(image, width: 160, height: 160, fit: BoxFit.fill),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8, left: 16),
            child: Text(
              name,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
          ),
          Row(
            children: [
              Container(
                padding: EdgeInsets.only(top: 2, left: 16),
                child: Row(
                  children: [
                    Text(
                      book,
                      style: TextStyle(color: Color(0xff9d9d9d)),
                    ),
                    Image.asset(
                      'assets/book.png',
                      width: Get.width * 0.03,
                      color: Color(0xff9d9d9d),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12),
                child:
                    Text(download, style: TextStyle(color: Color(0xff9d9d9d))),
              ),
              Image.asset(
                'assets/download.png',
                width: Get.width * 0.03,
                color: Color(0xff9d9d9d),
              )
            ],
          ),
        ],
      ),
    ),
  );
}

Widget favorit() {
  return Container(
    padding: EdgeInsets.only(top: 8),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "My Favorit",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
        ),
      ],
    ),
  );
}

Widget voca() {
  return Container(
    padding: EdgeInsets.only(top: 8),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8),
    ),
    child: Column(
      children: [
        vocab("Fizzle out:", " ระเบิด ล้มเหลวจากที่เริ่มต้นมาเป็นอย่างดี"),
        vocab("Interrogation:", " การไต่ถาม ซักถาม"),
        vocab("Posture:", " ท่าทาง ทัศนคติ"),
        vocab("Speaking of which:", " พอพูดถึงเรื่องนั้นก็นึกขึ้นได้ว่า"),
        vocab("Coincidence:", " เกิดขึ้นพร้อมกัน สอดคล้องกัน"),
        vocab("Hasty:", " รีบเร่ง"),
        vocab("Retribution:", " ผลกรรมตามสนอง"),
        vocab("Suspicion:", " ความสงสัย แคลงใจ"),
      ],
    ),
  );
}

Row vocab(String eng, String thai) {
  return Row(
    children: [
      Text(eng, style: TextStyle(fontSize: 16.5, fontWeight: FontWeight.w500)),
      Text(thai, style: TextStyle(fontSize: 14, color: Color(0xFF424242))),
    ],
  );
}
