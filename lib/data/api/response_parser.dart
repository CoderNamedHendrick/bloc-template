import 'dart:convert';

import 'package:bloc_template/data/api/response_types.dart';
import 'package:http/http.dart';

class ResponseParser<T> {
  final Response response;
  ResponseParser({required this.response});

  ResponseType getResponse(
    T Function(Map<String, dynamic> data) successTransformer,
    T Function(Map<String, dynamic> data) errorTransformer,
  ) {
    final result = json.decode(response.body);
    if (response.statusCode == 200) {
      return SuccessResponse<T>(
        data: successTransformer(result),
      );
    } else {
      return ErrorResponse<T>(
        data: errorTransformer(result),
      );
    }
  }
}
