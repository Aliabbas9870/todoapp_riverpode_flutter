import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todoapp/model/item.dart';

final itemProvider=StateNotifierProvider((ref){
  return;
});

class ItemState extends StateNotifier<List<Item>>{
  ItemState():super([]);
}