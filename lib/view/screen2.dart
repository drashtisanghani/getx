import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vadil/controller/homepage.dart';
import 'package:vadil/model/homepage_model.dart';

class Screen2 extends StatefulWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  final storeController = Get.find<HomePageController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("GetX Demo"),
          actions: [
            IconButton(
              onPressed: () {
                Get.back();
              },
              icon: const Icon(Icons.arrow_back),
            ),
          ],
        ),
        drawer: const Drawer(),
        body: ListView.builder(
          itemCount: storeController.homePage.value.entries?.length ?? 0,
          itemBuilder: (context, index) => ListTile(
            title: Text(
              storeController.homePage.value.entries![index].API.toString(),
            ),
            subtitle: Text(
              storeController.homePage.value.entries![index].Description
                  .toString(),
            ),
          ),
        )
        /*Column(
        children: [
          Text(
            storeController.homePage.value.count.toString(),
          ),
          ElevatedButton(
            onPressed: () {
              Get.back();
            },
            child: Text("Call"),
          ),
        ],
      ),*/
        );
  }
}
