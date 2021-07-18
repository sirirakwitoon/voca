import 'package:get/route_manager.dart';
import 'package:voca/screen/information.dart';

class Routes {
  static const informationPage = "/information";
  static List<GetPage> getPages() {
    return [GetPage(name: informationPage, page: () => InformationPage())];
  }
}
