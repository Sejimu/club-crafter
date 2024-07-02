abstract class BaseUseCase<Type, Params> {
  Future<Type> call(Params param);
}

abstract class NoParamsBaseUsecase<Type, Params> {
  Future<Type> call();
}
