import 'package:flutter_bloc/flutter_bloc.dart';

// Cubit은 bloc과 달리 이벤트를 만들지 않음.
class CounterCubit extends Cubit<int> {
  CounterCubit() : super(0);

  void increment() => emit(state + 1); // emit 은 클래스 밖에서는 호출할수 없음

  void decrement() => emit(state - 1);

  @override
  void onChange(Change<int> change) {
    print(change);
    super.onChange(change);
  }

  @override
  void onError(Object error, StackTrace stackTrace) {
    print('$error, $stackTrace');
    super.onError(error, stackTrace);
  }
}
