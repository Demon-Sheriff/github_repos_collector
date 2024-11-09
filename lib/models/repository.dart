import 'package:flutter/services.dart';

class Repository {
  String name, imageURL, description, createdAt, lastUpdated, rawURL, language;
  int comments, size;
  Repository({
    required this.name,
    required this.language,
    required this.description,
    required this.imageURL,
    required this.createdAt,
    required this.lastUpdated,
    required this.comments,
    required this.rawURL,
    required this.size,
  });
}
