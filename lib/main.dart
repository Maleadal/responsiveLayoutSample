import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:responsive_layout/responsive/layouts/mobile_layout.dart';
import 'package:responsive_layout/responsive/layouts/tablet_layout.dart';
import 'package:responsive_layout/responsive/layouts/web_layout.dart';
import 'package:responsive_layout/responsive/responsive_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ResponsiveLayout(
          mobileLayout: MobileLayout(),
          tabletLayout: TabletLayout(),
          webLayout: WebLayout()),
    );
  }
}
