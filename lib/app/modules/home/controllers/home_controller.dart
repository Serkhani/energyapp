import 'package:energy/app/data/user.dart';
import 'package:energy/app/routes/app_pages.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  late User user;
  @override
  void onInit() {
    user = const User(
        name: 'Jude Boachie',
        img: 'assets/profile.png',
        energyUsed2day: 26.8,
        energyUsedInMonth: 325.37,
        email: 'judeman@gmail.com',
        lastRecharge: 2);
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void topUp() {
    print('topup');
    Get.toNamed(Routes.TOP_UP);
  }
}
