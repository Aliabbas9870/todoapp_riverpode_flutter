class ItemsFav{
final  String name;
  final bool favourite;
  final int id;
  ItemsFav({required this.name, required this.id,required this.favourite});


ItemsFav copyWith({  String? name,
  int? id,
  bool? favourite
}) {
  return ItemsFav(
    name: name ?? this.name,
    id: id ?? this.id,
    favourite: favourite ?? this.favourite
  );
}
}