class Repository {
  String title, imageURL, description, createdAt, lastUpdated;
  int comments;
  Repository({
    required this.title,
    required this.description,
    required this.imageURL,
    required this.createdAt,
    required this.lastUpdated,
    required this.comments,
  });
}
