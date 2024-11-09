class Repository {
  String title, imageURL, description, createdAt, lastUpdated, rawURL;
  int comments, size;
  Repository({
    required this.title,
    required this.description,
    required this.imageURL,
    required this.createdAt,
    required this.lastUpdated,
    required this.comments,
    required this.rawURL,
    required this.size,
  });
}
