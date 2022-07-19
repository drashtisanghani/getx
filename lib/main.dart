import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vadil/controller/homepage.dart';
import 'package:vadil/model/homepage_model.dart';
import 'package:vadil/view/screen2.dart';

void main() {
  runApp(
    const GetMaterialApp(
      home: Screen1(),
    ),
  );
}

class Screen1 extends StatefulWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  final homeController = Get.put<HomePageController>(HomePageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GetX Demo"),
      ),
      drawer: const Drawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Text(
                homeController.homePage.value.count.toString(),
                style: const TextStyle(
                  fontSize: 40,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(() => const Screen2());
              },
              child: const Text("Goto Screen 2"),
            ),
          ],
        ),
      ),
    );
  }
}
