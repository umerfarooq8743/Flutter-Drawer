import 'package:drawer/mydrawer.dart';
import 'package:flutter/material.dart';

class DrawerSide extends StatefulWidget {
  const DrawerSide({super.key});

  @override
  State<DrawerSide> createState() => _DrawerSideState();
}

class _DrawerSideState extends State<DrawerSide> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        backgroundColor: Colors.green,
      ),
      drawer: Drawer(child: MyDrawer()),
    );
  }
}
