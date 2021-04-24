import 'package:dosis_literaria/comments/comments.dart';
import 'package:dosis_literaria/home/home.dart';
import 'package:dosis_literaria/profile/profile.dart';
import 'package:dosis_literaria/settings/settings.dart';
import 'package:dosis_literaria/start.dart';
import 'package:flutter/material.dart';
import 'util/Theme_provider.dart';

main() {
  WidgetsFlutterBinding.ensureInitialized();
  //MobileAds.instance.initialize();
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.system,
      initialRoute: '/',
      routes: {
        '/': (context) => StartScreen(),
        '/home': (context) => HomePage(),
        '/snippet/comments': (context) => CommentScreen(),
        '/profile': (context) => ProfilePage(),
        //'/profile/mycomments':(context)=>ProfilePage(), Todo:my comments
        '/settings': (context) => SettingsScreen(),
      },
    );
  }
}
