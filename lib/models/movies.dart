class Movies {
  String title;
  final String orignalTitle;
  final String backdropPath;
  final String overview;
  final String posterPath;
  final String releaseDate;
  final double voteAverage;

  Movies({
    required this.title,
    required this.orignalTitle,
    required this.backdropPath,
    required this.overview,
    required this.posterPath,
    required this.releaseDate,
    required this.voteAverage,
  });

  // to get data from api
  factory Movies.fromJson(Map<String, dynamic> json) {
    return Movies(
      title: json['title'],
      orignalTitle: json['original_title'],
      backdropPath: json['backdrop_path'],
      overview: json['overview'],
      posterPath: json['poster_path'],
      releaseDate: json['release_date'],
      voteAverage: json['vote_average'],
    );
  }
  /// to post to data to the server
  // Map<String, dynamic> toJson() => {
  //   'title': title,
  //   'original_title': orignalTitle,
  // };
}
