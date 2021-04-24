part of 'api.dart';

class Configuration {
  final String baseURL;
  final String signinURL;
  final String signupURL;
  final String isSigninURL;
  final String firebaseTokenURL;

  static const TOKEN_KEY = '';

  const Configuration(
      {@required this.baseURL,
      @required this.signinURL,
      @required this.signupURL,
      @required this.isSigninURL,
      @required this.firebaseTokenURL});

  static Future<Configuration> load() async {
    return Configuration(
        baseURL: "baseURL",
        signinURL: "signinURL",
        signupURL: "signupURL",
        isSigninURL: '',
        firebaseTokenURL: '');
  }
}

// Wrapper object for the authentication token
class Token {
  const Token(this._authenticationToken);

  // Token recibido luego de autenticarse con el servidor
  final String _authenticationToken;

  String get value => _authenticationToken;

  bool get isEmpty => _authenticationToken == null;

  static Future<Token> load() async {
    return Token(null);
  }
}
