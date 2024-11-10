class ImageItem {
  final String id;
  final String imageUrl;
  final String title;
  final String? description;

  ImageItem({
    required this.id,
    required this.imageUrl,
    required this.title,
    this.description,
  });
}
