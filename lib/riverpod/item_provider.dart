import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todoapp/model/item.dart';

final itemProvider=StateNotifierProvider<ItemNotifier,List<Item>>((ref){
  return ItemNotifier();
});

class ItemNotifier extends StateNotifier<List<Item>>{
  ItemNotifier():super([]);

  void addItem(String name){
    final item=Item(name: name, id: DateTime.now().toString());
    state.add(item);
    state =state.toList();
  }

    void removeItem(String id){

    state.removeWhere((itm)=>itm.id == id);
    state =state.toList();
  }
  

     void updateItem(String id,String newName){
final int ind=
    state.indexWhere((itm)=>itm.id == id);
    state[ind].name=newName;
    state =state.toList();
  }
  
}