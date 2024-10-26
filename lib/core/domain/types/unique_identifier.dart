import 'package:uuid/uuid.dart';

abstract class UniqueIdentifier<T> {
  T get value;
  bool get isInitialized;

  const UniqueIdentifier();

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is UniqueIdentifier && value == other.value) ||
      value == other;

  @override
  int get hashCode => Object.hash(runtimeType, value, isInitialized);
}

class IntegerUid extends UniqueIdentifier<int> {
  static const _unitializedReturnValue = 0;
  final int? _storedValue;

  const IntegerUid(this._storedValue);

  const IntegerUid.uninitialized() : _storedValue = null;

  @override
  int get value => _storedValue ?? _unitializedReturnValue;

  @override
  bool get isInitialized => _storedValue != null;
}

class StringUid extends UniqueIdentifier<String> {
  late final String _storedValue;

  StringUid(this._storedValue);

  StringUid.create() {
    _storedValue = const Uuid().v4();
  }

  @override
  String get value => _storedValue;

  @override
  bool get isInitialized => true;
}
