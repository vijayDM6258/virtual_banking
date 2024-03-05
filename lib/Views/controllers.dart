
import 'package:get/get.dart';

class BankingController extends GetxController {
  void navigateToPage(int index) {
    switch (index) {
      case 0:
        Get.toNamed('/AccountPage');
        break;
      case 1:
        Get.toNamed('/FundPage');
        break;
      case 2:
        Get.toNamed('/QuickPage');
        break;
      case 3:
        Get.toNamed('/EServicePage');
        break;
      case 4:
        Get.toNamed('/AtmPage');
        break;
      case 5:
        Get.toNamed('/EDepositPage');
        break;
      case 6:
        Get.toNamed('/EnquiriePage');
        break;
      case 7:
        Get.toNamed('/RequestPage');
        break;

      default:
        break;
    }
  }

}
