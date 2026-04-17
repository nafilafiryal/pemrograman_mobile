class Item {
  String name;
  int price;
  String imageUrl; // Tambahan atribut foto
  int stock;       // Tambahan atribut stok
  double rating;   // Tambahan atribut rating

  Item({
    required this.name,
    required this.price,
    required this.imageUrl,
    required this.stock,
    required this.rating,
  });
}