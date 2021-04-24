import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

part 'http.dart';
part 'configuration.dart';
part 'response.dart';
part 'authentication.dart';
part 'firebase.dart';
part 'widget.dart';
part 'library.dart';

abstract class BaseAPI {
  Token _token;
  Configuration _config;

  BaseAPI(this._config, this._token);
}

class API extends BaseAPI with FireBase {
  API(Configuration config, Token token) : super(config, token);

  static Future<API> instance() async {
    final config = await Configuration.load();
    final token = await Token.load();
    return API(config, token)..initializeFirebase();
  }
}
