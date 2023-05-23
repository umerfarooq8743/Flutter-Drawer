import 'package:drawer/home.dart';
import 'package:drawer/secondPage.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color.fromARGB(255, 251, 253, 251),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text("Moosa Khan"),
            accountEmail: Text("MoosaKhan123@gmail.com"),
            currentAccountPicture: CircleAvatar(
              child: Text(
                "MK",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
              ),
              backgroundColor: Colors.cyan,
            ),
            otherAccountsPictures: [
              CircleAvatar(
                child: Text(
                  "MK",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontWeight: FontWeight.w500),
                ),
                backgroundColor: Colors.cyan,
              ),
            ],
            onDetailsPressed: () {
              print("object");
            },
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text("Home"),
            trailing: Icon(Icons.more_vert),
            //selected: true,
            hoverColor: Color.fromARGB(255, 176, 182, 224),
            selectedColor: Color.fromARGB(255, 16, 40, 255),
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => DrawerSide()));
            },
          ),
          ListTile(
            leading: Icon(Icons.pages),
            title: Text("Second Screen"),
            trailing: Icon(Icons.more_vert),
            selected: false,
            hoverColor: Color.fromARGB(255, 176, 182, 224),
            selectedColor: Color.fromARGB(255, 16, 40, 255),
            onTap: () {
              print("trailing workings");
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => secondPage()));
            },
          ),
          ListTile(
            leading: Icon(Icons.contacts),
            title: Text("Contacts"),
            trailing: Icon(Icons.more_vert),
            selected: false,
            hoverColor: Color.fromARGB(255, 176, 182, 224),
            selectedColor: Color.fromARGB(255, 16, 40, 255),
            onTap: () {
              print("trailing workings");
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("Account Setting"),
            trailing: Icon(Icons.more_vert),
            selected: false,
            hoverColor: Color.fromARGB(255, 176, 182, 224),
            selectedColor: Color.fromARGB(255, 16, 40, 255),
            onTap: () {
              print("trailing workings");
            },
          ),
          Divider(),
          Expanded(
              child: Align(
            alignment: Alignment.bottomCenter,
            child: ListTile(
              leading: Icon(Icons.bug_report),
              title: Text("Bug"),
              trailing: Icon(Icons.more_horiz),
              selected: true,
              hoverColor: Color.fromARGB(255, 176, 182, 224),
              selectedColor: Colors.green,
              onTap: () {
                print("trailing workings");
              },
            ),
          ))
        ],
      ),
    );
  }
}
