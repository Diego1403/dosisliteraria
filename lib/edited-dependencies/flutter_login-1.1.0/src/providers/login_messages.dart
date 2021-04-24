import 'package:flutter/material.dart';

class LoginMessages with ChangeNotifier {
  LoginMessages({
    this.usernameHint = defaultUsernameHint,
    this.passwordHint = defaultPasswordHint,
    this.confirmPasswordHint = defaultConfirmPasswordHint,
    this.forgotPasswordButton = defaultForgotPasswordButton,
    this.loginButton = defaultLoginButton,
    this.signupButton = defaultSignupButton,
    this.recoverPasswordButton = defaultRecoverPasswordButton,
    this.recoverPasswordIntro = defaultRecoverPasswordIntro,
    this.recoverPasswordDescription = defaultRecoverPasswordDescription,
    this.goBackButton = defaultGoBackButton,
    this.confirmPasswordError = defaultConfirmPasswordError,
    this.recoverPasswordSuccess = defaultRecoverPasswordSuccess,
    this.flushbarTitleError = defaultflushbarTitleError,
    this.flushbarTitleSuccess = defaultflushbarTitleSuccess,
    this.signUpSuccess = defaultSignUpSuccess,
  });

  static const defaultUsernameHint = 'Correo';
  static const defaultPasswordHint = 'Contraseña';
  static const defaultConfirmPasswordHint = 'Confirmar contraseña';
  static const defaultForgotPasswordButton = '¿Olvido su contraseña?';
  static const defaultLoginButton = 'Iniciar sesion';
  static const defaultSignupButton = 'Registrarse';
  static const defaultRecoverPasswordButton = 'Recuperar';
  static const defaultRecoverPasswordIntro = 'Recuperar contraseña';
  static const defaultRecoverPasswordDescription =
      'le enviaremos su contraseña a su correo';
  static const defaultGoBackButton = 'ATRAS';
  static const defaultConfirmPasswordError = 'Las contraseñas no son iguales';
  static const defaultRecoverPasswordSuccess = 'Se le envio un correo';
  static const defaultflushbarTitleSuccess = 'Exito';
  static const defaultflushbarTitleError = 'Error';
  static const defaultSignUpSuccess =
      'Se le ha enviado un link de activacion a su correo';

  /// Hint text of the user name [TextField]
  final String usernameHint;

  /// Hint text of the password [TextField]
  final String passwordHint;

  /// Hint text of the confirm password [TextField]
  final String confirmPasswordHint;

  /// Forgot password button's label
  final String forgotPasswordButton;

  /// Login button's label
  final String loginButton;

  /// Signup button's label
  final String signupButton;

  /// Recover password button's label
  final String recoverPasswordButton;

  /// Intro in password recovery form
  final String recoverPasswordIntro;

  /// Description in password recovery form
  final String recoverPasswordDescription;

  /// Go back button's label. Go back button is used to go back to to
  /// login/signup form from the recover password form
  final String goBackButton;

  /// The error message to show when the confirm password not match with the
  /// original password
  final String confirmPasswordError;

  /// The success message to show after submitting recover password
  final String recoverPasswordSuccess;

  /// Title on top of Flushbar on errors
  final String flushbarTitleError;

  /// Title on top of Flushbar on successes
  final String flushbarTitleSuccess;

  /// The success message to show after signing up
  final String signUpSuccess;
}
