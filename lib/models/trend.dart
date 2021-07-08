class Trend {
  final String image, title, creator;

  Trend({
    required this.image,
    required this.title,
    required this.creator,
  });
}

List<Trend> trends = [
  Trend(image: "assets/book1.png", title: "Enchantment", creator: "Guy Kawasaki"),
  Trend(image: "assets/book2.png", title: "Lore", creator: "Aaron Mahnke"),
  Trend(image: "assets/book3.png", title: "Who Moved My Cheese", creator: "Spencer Johnson, M.D"),
];