part of 'api.dart';

/// Definicion del API request
typedef ServerRequest = Future<http.Response> Function(
    Uri uri, Map<String, String> headers);

/// Funciones basicas del API
/// Obliga a usar Credentials para requests que necesitan autenticacion
/// Carga la url del API desde config.json
extension Http on BaseAPI {
  // Get
  Future<APIResponse> get(String path) {
    return _request(
        path: path,
        successCode: 200,
        http: (uri, headers) => http.get(uri, headers: headers));
  }

  // Post
  Future<APIResponse> post(String path, dynamic body) {
    return _request(
        path: path,
        successCode: 201,
        http: (uri, headers) => http.post(uri, headers: headers, body: body));
  }

  // Put
  Future<APIResponse> put(String path, dynamic body) {
    return _request(
        path: path,
        successCode: 201,
        http: (uri, headers) => http.put(uri, headers: headers, body: body));
  }

  // Delete
  Future<APIResponse> delete(String path) {
    return _request(
        path: path,
        successCode: 200,
        http: (uri, headers) => http.delete(uri, headers: headers));
  }

  /// Request generico.
  Future<APIResponse> _request(
      {@required String path,
      @required int successCode,
      @required ServerRequest http}) async {
    var headers;
    if (!_token.isEmpty)
      headers = {
        HttpHeaders.authorizationHeader: _token.value,
      };
    final response = await http(Uri.https(_config.baseURL, path), headers);
    return APIResponse(response, successCode);
  }
}
