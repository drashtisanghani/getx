import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:vadil/model/homepage_model.dart';

class HomePageController extends GetxController {
  Rx<HomePage> homePage = Rx<HomePage>(HomePage());
  @override
  void onInit() async {
    super.onInit();

    apiCall();
  }

  Future<HomePage?> apiCall() async {
    Dio dio = Dio();
    var res = await dio.get("https://api.publicapis.org/entries");
    if (res.statusCode == 200) {
      homePage.value = HomePage.fromJson(res.data);
    }
    if (homePage.value != null) {
      return homePage.value;
    } else {
      return null;
    }
  }
}
