class Title {
  final String id;
  final String title;
  final String synopsis;
  final String indicativeRatingImageUrl;
  final String imageUrl;
  final String videoUrl;
  final String trailerUrl;
  final int year;
  final bool isLikedClassified;
  final List<String> categories;

  Title({
    required this.id,
    required this.title,
    required this.synopsis,
    required this.indicativeRatingImageUrl,
    required this.imageUrl,
    required this.videoUrl,
    required this.trailerUrl,
    required this.year,
    required this.isLikedClassified,
    required this.categories,
  });
}
