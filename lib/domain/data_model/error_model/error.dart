import 'package:http/http.dart' as http;

class HttpResponseData {
  final String message;
  final String code;
  final http.Response response;
  final bool isError;

  HttpResponseData({
    required this.code,
    required this.message,
    required this.isError,
    required this.response,
  });
}
