import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:trilhabr_mvp/pages/login/login_page.dart';
import 'package:trilhabr_mvp/pages/login/usuario.dart';
import 'package:trilhabr_mvp/utils/firebase.dart';
import 'package:trilhabr_mvp/utils/nav.dart';

class DrawerList extends StatelessWidget {
  UserAccountsDrawerHeader _header(FirebaseUser user) {
    return UserAccountsDrawerHeader(
      accountName: Text(user.displayName ?? ""),
      accountEmail: Text(user.email),
      currentAccountPicture: user.photoUrl != null
          ? CircleAvatar(
              backgroundImage: NetworkImage(user.photoUrl),
            )
          : FlutterLogo(),
    );
  }

  @override
  Widget build(BuildContext context) {
    Future<FirebaseUser> future = FirebaseAuth.instance.currentUser();

    return SafeArea(
      child: Drawer(
        child: ListView(
          children: <Widget>[
            FutureBuilder<FirebaseUser>(
              future: future,
              builder: (context, snapshot) {
                FirebaseUser user = snapshot.data;

                return user != null ? _header(user) : Container();
              },
            ),
            ListTile(
              leading: Icon(Icons.star),
              title: Text("Favoritos"),
              subtitle: Text("mais informações..."),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                print("Item 1");
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.help),
              title: Text("Ajuda"),
              subtitle: Text("mais informações..."),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                print("Item 1");
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text("Logout"),
              trailing: Icon(Icons.arrow_forward),
              onTap: () => _onClickLogout(context),
            )
          ],
        ),
      ),
    );
  }

  _onClickLogout(BuildContext context) {
    Usuario.clear();
    FirebaseService().logout();
    Navigator.pop(context);
    push(context, LoginPage(), replace: true);
  }
}
