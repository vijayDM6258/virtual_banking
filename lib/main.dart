import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'Views/Screens/AcoountPage/account_page.dart';
import 'Views/Screens/HomePage/HomePage_Screen/home_page.dart';
import 'Views/Screens/atm_page.dart';
import 'Views/Screens/e_deposit_page.dart';
import 'Views/Screens/e_service_page.dart';
import 'Views/Screens/enquirie_page.dart';
import 'Views/Screens/fund_page.dart';
import 'Views/Screens/quick_page.dart';
import 'Views/Screens/request_page.dart';

void main() {
  runApp(VirtualBanking());
}

class VirtualBanking extends StatefulWidget {
  const VirtualBanking({super.key});

  @override
  State<VirtualBanking> createState() => _VirtualBankingState();
}

class _VirtualBankingState extends State<VirtualBanking> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Virtual Banking",
      home: HomePage(),
      getPages: [
        GetPage(
          name: "/AcoountPage",
          page: () => AccountPage(),
        ),
        GetPage(
          name: "/FundPage",
          page: () => FundPage(),
        ),
        GetPage(
          name: "/QuickPage",
          page: () => QuickPage(),
        ),
        GetPage(
          name: "/EServicePage",
          page: () => EServicePage(),
        ),
        GetPage(
          name: "/AtmPage",
          page: () => AtmPage(),
        ),
        GetPage(
          name: "/EDepositPage",
          page: () => EDepositePage(),
        ),
        GetPage(
          name: "/EnquiriePage",
          page: () => EnquiriePage(),
        ),
        GetPage(
          name: "/RequestPage",
          page: () => RequestPage(),
        ),
      ],
    );
  }
}
