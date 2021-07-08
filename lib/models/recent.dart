class Recent {
  final String title, image;
  final int percent;

  Recent({
    required this.title,
    required this.image,
    required this.percent,
  });
}

List<Recent> recents = [
  Recent(image: "assets/recent1.png", title: "The Magic", percent: 50),
  Recent(image: "assets/recent2.png", title: "The Martian", percent: 80),
];
