abstract class DataState<T> {
  final String? failure;
  final T? data;
  const DataState({this.data, this.failure});
}

class DataSuccess<T> extends DataState<T> {
  DataSuccess({super.data});
}

class DataFailure<T> extends DataState<T> {
  DataFailure({super.failure});
}
