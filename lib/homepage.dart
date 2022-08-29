import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(

        child: Align(alignment: Alignment.center,
          child: Column(
            children: [
              Text("hello".tr),
              Text("message".tr),
              Text("Subscribe Now"),
              ElevatedButton(onPressed: () {
                var locale= Locale('hi', 'IN');
                Get.updateLocale(locale);
              }, child: Text('Hindi')),
              ElevatedButton(onPressed: () {
                var locale= Locale('en', 'US');
                Get.updateLocale(locale);
              }, child: Text('English')),
            ],
          ),
        ),
      ),
    );
  }
}
