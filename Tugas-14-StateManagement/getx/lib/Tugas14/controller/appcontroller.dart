import 'package:get/get.dart';
import 'package:getx/Tugas14/model/postmodel.dart';
import 'package:getx/Tugas14/services/services.dart';

class AppController extends GetxController {
  var getPosts = <Postmodel>[].obs;
  Services services = Services();
  var postLoading = true.obs;

  @override
  void onInit() {
    callPostMethod();
    super.onInit();
  }

  callPostMethod() async {
    try {
      postLoading.value = true;
      var result = await services.getAllPost();
      if (result != null) {
        getPosts.assignAll(result);
      } else {
        // ignore: avoid_print
        print("null");
      }
    } finally {
      postLoading.value = false;
    }
    update();
  }
}
