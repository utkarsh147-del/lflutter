import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imgurl =
        "https://media.licdn.com/dms/image/C5603AQGppsV7Xqd1dg/profile-displayphoto-shrink_800_800/0/1606314126190?e=2147483647&v=beta&t=qkjNm6jb8_hK92Po8hWIvkLqFLRxPrP4tUpgRwF5vi8";
    return Drawer(
        child: Container(
      color: Colors.deepPurple,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName: Text("Utkarsh Chauhan"),
                accountEmail: Text("ut@gmail.com"),
                // currentAccountPicture: Image.network(imgurl),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imgurl),
                ),
              )),
          ListTile(
            leading: Icon(CupertinoIcons.home, color: Colors.white),
            title: Text(
              "home",
              textScaleFactor: 1.2,
              style: TextStyle(color: Colors.white),
            ),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.profile_circled, color: Colors.white),
            title: Text(
              "Profile",
              textScaleFactor: 1.2,
              style: TextStyle(color: Colors.white),
            ),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.mail, color: Colors.white),
            title: Text(
              "Mail",
              textScaleFactor: 1.2,
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    ));
  }
}
