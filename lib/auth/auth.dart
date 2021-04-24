import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sign_button/sign_button.dart';
import '../api/api.dart';
import 'package:dosis_literaria/home/home.dart';
import 'package:flutter/scheduler.dart' show timeDilation;
import '../edited-dependencies/flutter_login-1.1.0/flutter_login.dart';
import 'helpers/custom_route.dart';
import 'helpers/users.dart';
part 'widgets/button.dart';
part 'widgets/textfield.dart';
part 'widgets/background.dart';

class AuthenticationPage extends StatelessWidget {
  @override
  Duration get loginTime => Duration(milliseconds: timeDilation.ceil() * 2250);

  Future<String> _loginUser(LoginData data) {
    return Future.delayed(loginTime).then((_) {
      if (!mockUsers.containsKey(data.name)) {
        return 'Usuario no existe';
      }
      if (mockUsers[data.name] != data.password) {
        return 'la contraseña no concide';
      }
      return null;
    });
  }

  Future<String> _recoverPassword(String name) {
    return Future.delayed(loginTime).then((_) {
      if (!mockUsers.containsKey(name)) {
        return 'Usuario no existe';
      }
      return null;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: FlutterLogin(
        loginAfterSignUp: true,
        theme: LoginTheme(
            primaryColor: Theme.of(context).primaryColor,
            accentColor: Theme.of(context).accentColor,
            errorColor: Theme.of(context).accentColor,
            pageColorLight: Theme.of(context).accentColor,
            titleStyle: TextStyle(
              color: Colors.black87,
              fontFamily: 'Literata',
              letterSpacing: 2,
            )),
        logo: "assets/app_icon_medium.png",
        loginProviders: <LoginProvider>[
          LoginProvider(
            icon: FontAwesomeIcons.google,
            callback: () async {
              print('start google sign in');
              //action: () => AppAPI.of(context).api.signinFirebase();
              print('stop google sign in');
              return null;
            },
          ),
          LoginProvider(
            icon: FontAwesomeIcons.facebookF,
            callback: () async {
              print('start facebook sign in');
              await Future.delayed(loginTime);
              print('stop facebook sign in');
              return null;
            },
          ),
          LoginProvider(
            icon: FontAwesomeIcons.githubAlt,
            callback: () async {
              print('start github sign in');
              await Future.delayed(loginTime);
              print('stop github sign in');
              return null;
            },
          ),
        ],
        emailValidator: (value) {
          if (!value.contains('@') || !value.endsWith('.com')) {
            return "Su correo debe empezar con '@' y terminar con '.com'";
          }
          return null;
        },
        passwordValidator: (value) {
          if (value.isEmpty) {
            return 'Su contraseña esta vacia';
          }
          return null;
        },
        onLogin: (loginData) {
          print('Iniciar sesion');
          print('Nombre: ${loginData.name}');
          print('Contraseña: ${loginData.password}');
          return _loginUser(loginData);
        },
        onSignup: (loginData) {
          print('Registro');
          print('Nombre: ${loginData.name}');
          print('Contraseña: ${loginData.password}');
          return _loginUser(loginData);
        },
        onSubmitAnimationCompleted: () {
          Navigator.of(context).pushReplacement(FadePageRoute(
            builder: (context) => HomePage(),
          ));
        },
        onRecoverPassword: (name) {
          print('Recuperar contraseña');
          print('Nombre: $name');
          return _recoverPassword(name);
        },
        showDebugButtons: false,
      ),
    );
  }
}
