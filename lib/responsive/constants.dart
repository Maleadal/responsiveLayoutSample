import 'package:flutter/material.dart';

var bgColor = Colors.grey[300];
var contentColor = Colors.white.withOpacity(0.3);

Widget drawer = Drawer(
  backgroundColor: Colors.grey[300],
  child: Column(children: [
    IconButton(
      icon: Icon(
        Icons.favorite,
        color: Colors.grey[900],
      ),
      padding: const EdgeInsets.all(30),
      onPressed: () {},
    ),
    ListTile(
      onTap: () {},
      leading: Icon(Icons.home, color: Colors.grey[900]),
      title: const Text("D A S H B O A R D"),
    ),
    ListTile(
      onTap: () {},
      leading: Icon(Icons.message, color: Colors.grey[900]),
      title: const Text("M E S S A G E"),
    ),
    ListTile(
      onTap: () {},
      leading: Icon(Icons.settings, color: Colors.grey[900]),
      title: const Text("S E T T I N G S"),
    ),
    ListTile(
      onTap: () {},
      leading: Icon(Icons.logout, color: Colors.grey[900]),
      title: const Text("L O G O U T"),
    )
  ]),
);
