abstract class ResponseType {}

class SuccessResponse<T> extends ResponseType {
  final T data;
  SuccessResponse(this.data);
}

class ErrorResponse<T> extends ResponseType {
  final Exception exception;
  ErrorResponse(this.exception);
}
