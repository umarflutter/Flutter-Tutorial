import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class MyDrawer extends StatelessWidget {
  const MyDrawer({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
   return Drawer(
     child : Container(
       color: Colors.redAccent,
      child: ListView(
        
        padding: EdgeInsets.zero,
        children: [
          
    DrawerHeader(
    padding: EdgeInsets.zero,

    child:UserAccountsDrawerHeader(
      margin: EdgeInsets.zero,
decoration: BoxDecoration(
  color: Colors.redAccent
),
      accountName: Text("KingsMall"),

     accountEmail: Text("info@kingsmall@gmail.com"),
      currentAccountPicture: CircleAvatar(
        backgroundImage: AssetImage("assets/images/malll.jpg"),
      ),
            )
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.home,
              color: Colors.white,
            ),
            title: Text("Home",
            textScaleFactor: 1.2,
            style: TextStyle(
              color: Colors.white,
            ),
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.shopping_cart,
              color: Colors.white,
            ),
            title: Text("Shopping",
            textScaleFactor: 1.2,
            style: TextStyle(
              color: Colors.white,
            ),
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.profile_circled,
              color: Colors.white,
            ),
            title: Text("Profile",
            textScaleFactor: 1.2,
            style: TextStyle(
              color: Colors.white,
            ),
            ),
          ),ListTile(
            leading: Icon(
              CupertinoIcons.mail,
              color: Colors.white,
            ),
            title: Text("Contact Us",
            textScaleFactor: 1.2,
            style: TextStyle(
              color: Colors.white,
            ),
            ),
          ),

        ],
        ),
     ),
    );
  }
}