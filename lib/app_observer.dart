import 'package:bloc/bloc.dart';

class AppObserver extends BlocObserver {
  @override
  void onChange(Cubit cubit, Change change) {
    // Bloc, Cubit의 onChange 와는  다르게 Cubit cubit 인자가 추가되어서 cubit.runtimeType 타입을 확인할수 있음.
    // runtimeType 을 이용하면 어떤 큐빗에서 발생한건지 알수가 있다.
    print('${cubit.runtimeType} $change');

    super.onChange(cubit, change);
  }

  @override
  void onError(Cubit cubit, Object error, StackTrace stackTrace) {
    print('${cubit.runtimeType} $error $stackTrace ');
    super.onError(cubit, error, stackTrace);
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    //Cubit 은 이벤트가 없기 때문에 bloc이 들어옴.
    print('${bloc.runtimeType} $transition');
    super.onTransition(bloc, transition);
  }
}
