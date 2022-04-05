import 'dart:html';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sdridetai/dimensions.dart';
import 'package:sdridetai/pagesFolder.dart/mass.dart';
import 'package:sdridetai/pagesFolder.dart/meditaion%5Bpage.dart';
import 'package:sdridetai/pagesFolder.dart/paryernight.dart';
import 'package:sdridetai/pagesFolder.dart/paryuerEvenimg.dart';
import 'package:sdridetai/pagesFolder.dart/prayermorning.dart';
import 'package:sdridetai/pagesFolder.dart/saintWho.dart';
import 'package:sdridetai/pagesFolder.dart/settingsPage.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    print("${MediaQuery.of(context).size.height.toString()}");
    print("${MediaQuery.of(context).size.width.toString()}");

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(children: [
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                        'data:image/jpeg;base64,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',
                      ),
                      fit: BoxFit.fill),
                  color: Colors.grey,
                ),
                height: MediaQuery.of(context).size.height * 0.3,
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('Manifiacant',
                          style: TextStyle(fontSize: 40, color: Colors.white)),
                      SizedBox(width: Dimensions.screenHeight50),
                      const Icon(Icons.date_range),
                      GestureDetector(
                          onTap: () {
                            Get.to(SettingsPage());
                          },
                          child: const Icon(Icons.settings)),
                    ],
                  ),
                  SizedBox(
                    height: Dimensions.screenHeight50,
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                      ),
                      const Text(
                        "5",
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                      Column(
                        children: [
                          Text(
                            "April 2022",
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            "TuesDay",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    Expanded(child: Container()),
                      Row( 
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                        Container(
                          padding: EdgeInsets.only(right: 30),
                          child: Icon(
                            
                            Icons.arrow_forward_ios,
                            color: Colors.white,
                          ),
                        )
                      ])
                    ],
                  ),
                ]),
              ),
            ]),
            Container(
              padding: EdgeInsets.all(5),
              child: Text(
                "Saint Vincent efrree",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 10),
              ),
              width: double.infinity,
              color: Colors.black.withOpacity(0.2),
            ),
            Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.68,
                child: ListView(
                  children: [
                    GestureDetector(
                        onTap: () {
                          Get.to(PrayerMorning());
                        },
                        child: ListOptions(title: "Paryer for the Morning")),
                    Divider(
                      height: Dimensions.screenHeight7,
                    ),
                    GestureDetector(
                        onTap: () {
                          Get.to((Mass()));
                        },
                        child: ListOptions(title: " Mass")),
                    Divider(
                      height: Dimensions.screenHeight7,
                    ),
                    GestureDetector(
                        onTap: () {
                          Get.to(MediatationPAGE());
                        },
                        child: ListOptions(title: "Meditation")),
                    Divider(
                      height: Dimensions.screenHeight7,
                    ),
                    GestureDetector(
                        onTap: () {
                          Get.to(PrayerEvening());
                        },
                        child: ListOptions(title: " Prayer for the Evening"))
                  ],
                ))
          ],
        ),
      ),
    );
  }
}

class ListOptions extends StatelessWidget {
  ListOptions({Key? key, required this.title}) : super(key: key);
  String title;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
    );
  }
}
