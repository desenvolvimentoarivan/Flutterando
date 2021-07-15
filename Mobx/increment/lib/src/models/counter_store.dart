import 'package:mobx/mobx.dart';
part 'counter_store.g.dart';

class CounterStore = _CounterBaseStore with _$CounterStore;

abstract class _CounterBaseStore with Store {
  @observable
  int value = 0;

  @action
  increment() {
    value++;
  }
}
