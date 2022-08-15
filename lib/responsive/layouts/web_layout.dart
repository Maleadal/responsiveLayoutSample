import 'dart:ui';

import 'package:flutter/material.dart';

import '../constants.dart';

class WebLayout extends StatefulWidget {
  const WebLayout({Key? key}) : super(key: key);

  @override
  State<WebLayout> createState() => _WebLayoutState();
}

class _WebLayoutState extends State<WebLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        title: const Text("D A S H B O A R D (D E S K T O P)"),
      ),
      body: Row(children: [
        // * Drawer
        drawer,

        // * Rest of body
        Expanded(
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: 4,
                child: SizedBox(
                  width: double.infinity,
                  child: GridView.builder(
                      itemCount: 4,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 4),
                      itemBuilder: ((context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            decoration: BoxDecoration(
                                color: contentColor,
                                border: Border.all(),
                                borderRadius: BorderRadius.circular(30)),
                            child:
                                Center(child: Text("Some Data ${index + 1}")),
                          ),
                        );
                      })),
                ),
              ),
              ScrollConfiguration(
                behavior:
                    ScrollConfiguration.of(context).copyWith(dragDevices: {
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
                      padding:
                          const EdgeInsets.only(left: 10, right: 10, top: 10),
                      child: Container(
                          height: 80,
                          decoration: BoxDecoration(
                              color: contentColor,
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(30)),
                          child: Center(
                              child: Text("Some Other Data ${index + 1}"))),
                    );
                  }),
                )),
              ),
            ],
          ),
        ),
        Expanded(
          child: Column(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    decoration: BoxDecoration(
                        color: contentColor,
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(30)),
                    child: Center(
                        child: const Text("Some OTHER OTHER RELEVANT DATA")),
                  ),
                ),
              ),
            ],
          ),
        )
      ]),
    );
  }
}
