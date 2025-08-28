import 'package:todoapp/model/item_fav.dart';

class FavState {
  final List<ItemsFav> allItems;
  final List<ItemsFav> filterItems;
  final String search;

  FavState({required this.allItems, required this.filterItems, required this.search});
  

  FavState copyWith({List<ItemsFav>? allItems, List<ItemsFav>? filterItems, String? search}) {
    return FavState(
      allItems: allItems ?? this.allItems,
      filterItems: filterItems ?? this.filterItems,
      search: search ?? this.search,
    );
  }
}