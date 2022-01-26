import 'dart:convert';
import 'package:bloc_template/utils/response_types.dart';
import 'package:http/http.dart';

class ResponseParser<T> {
  final Response response;
  ResponseParser({required this.response});

  ResponseType getResponse(
    T Function(Map<String, dynamic> data) successTransformer,
  ) {
    final result = json.decode(response.body);
    if (response.statusCode == 200) {
      return SuccessResponse<T>(
        successTransformer(result),
      );
    } else {
      return ErrorResponse(
        Exception(result['message']),
      );
    }
  }
}
