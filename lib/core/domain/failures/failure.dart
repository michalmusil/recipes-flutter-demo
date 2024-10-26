abstract class Failure {}

class UnknownFailure extends Failure {
  final String? message;

  UnknownFailure([this.message]);

  @override
  String toString() =>
      "An instance of UnknownFailure occurred. Message: ${message ?? 'none'}";
}

class UninitializedFailure extends Failure {
  UninitializedFailure();
}
