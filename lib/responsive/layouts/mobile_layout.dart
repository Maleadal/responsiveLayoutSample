import 'dart:ui';

import 'package:flutter/material.dart';

import '../constants.dart';

class MobileLayout extends StatefulWidget {
  const MobileLayout({Key? key}) : super(key: key);

  @override
  State<MobileLayout> createState() => _MobileLayoutState();
}

class _MobileLayoutState extends State<MobileLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: drawer,
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        title: const Text("D A S H B O A R D ( M O B I L E )"),
      ),
      body: Column(children: [
        AspectRatio(
          aspectRatio: 1,
          child: SizedBox(
            width: double.infinity,
            child: GridView.builder(
                itemCount: 4,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemBuilder: ((context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: contentColor,
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(30)),
                      child: Center(child: Text("Some Data ${index + 1}")),
                    ),
                  );
                })),
          ),
        ),
        ScrollConfiguration(
          behavior: ScrollConfiguration.of(context).copyWith(dragDevices: {
            PointerDeviceKind.touch,
            PointerDeviceKind.mouse,
          }),
          child: Expanded(
              child: ListView.builder(
            physics: const AlwaysScrollableScrollPhysics(),
            scrollDirection: Axis.vertical,
            itemCount: 10,
            itemBuilder: ((context, index) {
              return Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
                child: Container(
                    height: 80,
                    decoration: BoxDecoration(
                        color: contentColor,
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(30)),
                    child: Center(child: Text("Some Other Data ${index + 1}"))),
              );
            }),
          )),
        )
      ]),
    );
  }
}
