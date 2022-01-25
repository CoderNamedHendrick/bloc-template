abstract class ResponseType {}

class SuccessResponse<T> extends ResponseType {
  T? data;
  SuccessResponse({this.data});
}

class ErrorResponse<T> extends ResponseType {
  T? data;
  ErrorResponse({this.data});
}
