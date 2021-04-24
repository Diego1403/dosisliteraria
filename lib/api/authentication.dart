part of 'api.dart';

class UserCredentials {
  final String _email;
  final String _password;

  UserCredentials(this._email, this._password);

  Map<String, String> toJson() => {
        'email': _email,
        'password': _password,
      };
}

extension Authentication on BaseAPI {
  Future<bool> signUp(UserCredentials user) async {
    final response = await post(_config.signupURL, user.toJson());
    if (response.isSuccessful) {
      return await signIn(user);
    }
    throw Exception('''
      Failed signup for: ${user._email}.
      $response
      ''');
  }

  Future<bool> signIn(UserCredentials user) async {
    final response = await post(_config.signinURL, user.toJson());
    if (response.isSuccessful) {
      _token = Token(response.headers['Authorization']);
      return true;
    }
    throw Exception('''
      Failed singin for: ${user._email}.
      $response
      ''');
  }

  Future<bool> pingSignedin() async {
    final response = await get(_config.isSigninURL);
    return response.isSuccessful;
  }

  Future<bool> verifySignedIn() async {
    if (_token.isEmpty) {
      return false;
    }
    return await pingSignedin();
  }

  verifyFirebaseToken(String token) async {
    final response = await post(_config.firebaseTokenURL, token);
    if (response.isSuccessful) {
      _token = Token(response.headers['Authorization']);
    }
  }
}
