class ApiResponse<T> {
  T? resObject;
  bool isSuccess;
  bool updateRequired;
  String errorCause;

  ApiResponse(
      {required this.isSuccess,
      required this.resObject,
      required this.errorCause,
      this.updateRequired = false});
}
