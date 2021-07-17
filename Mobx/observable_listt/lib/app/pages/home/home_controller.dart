import 'package:mobx/mobx.dart';
import 'package:observable_listt/app/models/item_model.dart';
part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  /*@observable
  ObservableList<ItemModel> listItems = ObservableList<ItemModel>.of([
    ItemModel(title: 'Item 1', check: true),
    ItemModel(title: 'Item 2', check: false),
    ItemModel(title: 'Item 3', check: false),
  ]);*/
  //asObserverble

  @observable
  ObservableList<ItemModel> listItems = [
    ItemModel(title: 'Item 1', check: true),
    ItemModel(title: 'Item 2', check: false),
    ItemModel(title: 'Item 3', check: false),
  ].asObservable();

  @observable
  String filter = '';

  @computed
  List<ItemModel> get listFiltered {
    if (filter.isEmpty) {
      return listItems;
    } else {
      return listItems
          .where((item) => item.title.contains(filter.toLowerCase()))
          .toList();
    }
  }

  @action
  setFilter(String value) => filter = value;

  @action
  addItem(ItemModel model) {
    listItems.add(model);
  }

  @action
  removeItem(ItemModel model) {
    listItems.removeWhere((item) => item.title == model.title);
  }
}
