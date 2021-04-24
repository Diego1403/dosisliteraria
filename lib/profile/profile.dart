import 'package:dosis_literaria/util/Theme_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'header.dart';

class ProfilePage extends StatefulWidget {
  ProfilePage({Key key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Perfil',
      theme: lightTheme,
      home: Scaffold(
        body: ListView(
          children: <Widget>[
            SizedBox(height: 50.0),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 5.0),
              child: Container(
                height: 250,
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColorDark,
                ),
                child: ProfileHeader(),
              ),
            ),
            Container(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Card(
                      color: Theme.of(context).backgroundColor,
                      child: ListTile(
                        title: Text(
                          '5000',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            color: Theme.of(context).dividerColor,
                          ),
                        ),
                        subtitle: Text(
                          'Textos leidos',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20,
                            color: Theme.of(context).dividerColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Theme.of(context).backgroundColor,
                      child: ListTile(
                        title: Text(
                          '250',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            color: Theme.of(context).dividerColor,
                          ),
                        ),
                        subtitle: Text(
                          'comentarios',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20,
                            color: Theme.of(context).dividerColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              //  color: Global.white,
              child: Column(
                children: <Widget>[
                  ListTile(
                    title: Text(
                      'Email',
                      style: TextStyle(
                        color: Theme.of(context).dividerColor,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      'Diegovr.1403@gmail.com',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                  Divider(),
                ],
              ),
            ),
            Container(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Card(
                      color: Theme.of(context).backgroundColor,
                      child: ListTile(
                        title: Text(
                          '5000',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            color: Theme.of(context).dividerColor,
                          ),
                        ),
                        subtitle: Text(
                          'Textos leidos',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20,
                            color: Theme.of(context).dividerColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Theme.of(context).backgroundColor,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
