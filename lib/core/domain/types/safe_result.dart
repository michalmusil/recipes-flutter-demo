import 'package:recipes_flutter_demo/core/domain/failures/failure.dart';

sealed class SafeResult<T extends Object, F extends Failure> {
  bool get isSuccess => this is ResultSuccess<T, F>;

  T getDataOrCrash() {
    if (this is! ResultSuccess<T, F>) {
      throw StateError(
          "Asserted that $runtimeType is $ResultSuccess but it is actually $ResultFailure");
    }
    return (this as ResultSuccess<T, F>).data;
  }

  F getFailureOrCrash() {
    if (this is! ResultFailure<T, F>) {
      throw StateError(
          "Asserted that $runtimeType is $ResultFailure but it is actually $ResultSuccess");
    }
    return (this as ResultFailure<T, F>).failure;
  }

  void fold({
    void Function(T data)? onSuccess,
    void Function(F failure)? onFailure,
  }) {
    switch (this) {
      case ResultSuccess<T, F>():
        {
          final data = (this as ResultSuccess<T, F>).data;
          onSuccess?.call(data);
          break;
        }
      case ResultFailure<T, F>():
        {
          final failure = (this as ResultFailure<T, F>).failure;
          onFailure?.call(failure);
          break;
        }
    }
  }

  Future<void> foldAsync({
    Future<void> Function(T data)? onSuccess,
    Future<void> Function(F failure)? onFailure,
  }) async {
    switch (this) {
      case ResultSuccess<T, F>():
        {
          final data = (this as ResultSuccess<T, F>).data;
          await onSuccess?.call(data);
          break;
        }
      case ResultFailure<T, F>():
        {
          final failure = (this as ResultFailure<T, F>).failure;
          await onFailure?.call(failure);
          break;
        }
    }
  }

  R map<R>({
    required R Function(T data) ifSuccess,
    required R Function(F failure) ifFailure,
  }) {
    switch (this) {
      case ResultSuccess<T, F>():
        {
          final data = (this as ResultSuccess<T, F>).data;
          return ifSuccess(data);
        }
      case ResultFailure<T, F>():
        {
          final failure = (this as ResultFailure<T, F>).failure;
          return ifFailure(failure);
        }
    }
  }

  Future<R> mapAsync<R>({
    required Future<R> Function(T data) ifSuccess,
    required Future<R> Function(F failure) ifFailure,
  }) async {
    switch (this) {
      case ResultSuccess<T, F>():
        {
          final data = (this as ResultSuccess<T, F>).data;
          return await ifSuccess(data);
        }
      case ResultFailure<T, F>():
        {
          final failure = (this as ResultFailure<T, F>).failure;
          return await ifFailure(failure);
        }
    }
  }
}

class ResultSuccess<T extends Object, F extends Failure>
    extends SafeResult<T, F> {
  final T data;

  ResultSuccess(this.data);
}

class ResultFailure<T extends Object, F extends Failure>
    extends SafeResult<T, F> {
  final F failure;

  ResultFailure(this.failure);
}
