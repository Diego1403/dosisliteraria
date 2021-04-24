part of 'api.dart';

// Object wrapper for http.Response
class APIResponse {
  final http.Response response;
  final int successCode;
  dynamic body;

  APIResponse(this.response, this.successCode) {
    body = jsonDecode(response.body);
  }

  int get statusCode => response.statusCode;
  bool get isSuccessful => statusCode == successCode;
  Map<String, String> get headers => response.headers;

  @override
  String toString() => '''
    Status: ${response.statusCode}.
    Body: ${response.body}
  ''';
}
