import 'package:get/route_manager.dart';
import 'package:voca/screen/home.dart';
import 'package:voca/screen/information.dart';
import 'package:voca/screen/welcome.dart';

class Routes {
  static const informationPage = "/information", homePage = "/home";
  static List<GetPage> getPages() {
    return [
      GetPage(name: informationPage, page: () => InformationPage()),
      GetPage(name: homePage, page: () => HomePage())
    ];
  }
}
