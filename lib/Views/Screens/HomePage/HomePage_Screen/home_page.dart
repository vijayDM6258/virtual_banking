import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:virtual_banking/Views/controllers.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  get Ats =>
      TextStyle(color: Colors.white, fontWeight: FontWeight.w400, fontSize: 15);

  get Sts => TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w400,
        fontSize: 15,
      );

  @override
  Widget build(BuildContext context) {
    final BankingController bankingController = Get.put(BankingController());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff0A1F8C),
        leading: Padding(
          padding: const EdgeInsets.all(5.0),
          child: CircleAvatar(
            backgroundColor: Colors.white,
            backgroundImage: AssetImage("assets/images/sgbleading.jpeg"),
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Saurastra Gramin Bank",
              style: Ats,
            ),
            Text(
              "Mobile Banking",
              style: Ats,
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.power_settings_new_outlined,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            height: MediaQuery.sizeOf(context).height / 5,
            width: MediaQuery.sizeOf(context).width,
            decoration: BoxDecoration(
              // color: Colors.red,
              border: Border.all(color: Colors.black, width: 2),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("VIJAY MAKWANA"),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Account Number",
                    style: TextStyle(color: Colors.green),
                  ),
                ),
                Text("Account Number : 12345678952"),
                TextButton(
                  style: ButtonStyle(),
                  onPressed: () {},
                  child: Text(
                    "Show Balance ",
                    style: TextStyle(color: Colors.green),
                  ),
                ),
              ],
            ),
          ),
          GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              // crossAxisSpacing: 16.0,
              // mainAxisSpacing: 16.0,
            ),
            itemCount: 8,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: () {
                    bankingController.navigateToPage(index);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                    ),
                    child: Text("${index}"),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
