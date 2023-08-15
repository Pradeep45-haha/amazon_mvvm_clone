import 'dart:convert';
import 'package:amazon_mvvm_clone/domain/data_model/error_model/error.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;

HttpResponseData httpErrorHandle({
   http.Response? response,
  VoidCallback? onSuccess,
}) {
  switch (response!.statusCode) {
    case 200:
      debugPrint(200.toString());
      onSuccess!();
      return HttpResponseData(
        code: 200.toString(),
        isError: false,
        message: "Success",
        response: response,
      );

    case 400:
      debugPrint(400.toString());
      debugPrint(jsonDecode(response.body)['msg']);
      return HttpResponseData(
        code: 400.toString(),
        isError: true,
        message: "Failed",
        response: response,
      );
    case 500:
      debugPrint(500.toString());
      debugPrint(jsonDecode(response.body)['error']);
      return HttpResponseData(
        code: 500.toString(),
        isError: true,
        message: "Failed",
        response: response,
      );
    default:
      debugPrint("default case");
      debugPrint(response.body);
      return HttpResponseData(
        code: 0.toString(),
        isError: true,
        message: "No response",
        response: response,
      );
  }
}
