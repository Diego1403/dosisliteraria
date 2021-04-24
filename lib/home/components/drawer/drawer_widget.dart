import 'package:dosis_literaria/profile/profile.dart';
import 'package:dosis_literaria/settings/settings.dart';
import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  Widget _createDrawerItem(
      {IconData icon, String text, GestureTapCallback onTap}) {
    return ListTile(
      title: Row(
        children: <Widget>[
          Icon(icon),
          Padding(
            padding: EdgeInsets.only(left: 4.0),
            child: Text(text),
          )
        ],
      ),
      onTap: onTap,
    );
  }

  @override
  Widget build(BuildContext context) {
    //final auxbook = Provider.of<SesionProvider>(context).getauxbook();
    return Drawer(
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).backgroundColor,
        ),
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            SizedBox(
              height: 150,
            ),
            ListTile(
              title: _createDrawerItem(icon: Icons.star, text: 'Calificanos'),
              onTap: () {},
            ),
            ListTile(
              title: _createDrawerItem(icon: Icons.person, text: 'Perfil'),
              onTap: () {
                Navigator.pushNamed(context, '/profile');
                print("Pefil presionado");
              },
            ),
            ListTile(
              title: _createDrawerItem(
                  icon: Icons.arrow_upward, text: 'Vuelvete Premium'),
              onTap: () {
                print("Premium presionado");
              },
            ),

            // _createDrawerItem(
            //   icon: Icons.note,
            //   text: 'Notes',
            // ),
            // _createDrawerItem(icon: Icons.collections_bookmark, text: 'Steps'),
            ListTile(
              title: _createDrawerItem(icon: Icons.settings, text: 'Ajustes'),
              onTap: () {
                Navigator.pushNamed(context, '/settings');
                print("ajustes presionado");
              },
            ),
            ListTile(
              title: _createDrawerItem(
                  icon: Icons.bug_report, text: 'Reporta algun error'),
              onTap: () {
                print("reporta un algun error presionado");
              },
            ),
            SizedBox(
              height: 150,
            ),
            ListTile(
              title: Text('0.0.1'),
              onTap: () {
                print("hola");
              },
            ),
            ListTile(
              title:
                  _createDrawerItem(icon: Icons.logout, text: 'Cerrar sesion'),
              onTap: () {
                print("logout presionado");
              },
            ),
          ],
        ),
      ),
    );
  }
}
