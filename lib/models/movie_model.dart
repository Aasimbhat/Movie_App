class Movie {
  final String name;
  final String imagepath;
  final String videoPath;
  final String category;
  final int year;
  final Duration duration;

  const Movie(
      {required this.name,
      required this.imagepath,
      required this.videoPath,
      required this.category,
      required this.year,
      required this.duration});

  static const List<Movie> movies = [
    Movie(
        name: 'The Innocents',
        imagepath: "assets/img1.jpg",
        videoPath: 'assets/videos/example.mov',
        category: 'Thriller',
        year: 2022,
        duration: Duration(hours: 1, minutes: 58)),
    Movie(
        name: 'The Innocents',
        imagepath: "assets/img2.jpg",
        videoPath: 'assets/videos/example.mov',
        category: 'Thriller',
        year: 2022,
        duration: Duration(hours: 1, minutes: 58)),
    Movie(
        name: 'The Innocents',
        imagepath: "assets/img3.jpg",
        videoPath: 'assets/videos/example.mov',
        category: 'Thriller',
        year: 2022,
        duration: Duration(hours: 1, minutes: 58)),
    Movie(
        name: 'The Innocents',
        imagepath: "assets/img4.jpg",
        videoPath: 'assets/videos/example.mov',
        category: 'Thriller',
        year: 2022,
        duration: Duration(hours: 1, minutes: 58)),
    Movie(
        name: 'The Innocents',
        imagepath: "assets/img5.jpg",
        videoPath: 'assets/videos/example.mov',
        category: 'Thriller',
        year: 2022,
        duration: Duration(hours: 1, minutes: 58)),
    Movie(
        name: 'The Innocents',
        imagepath: "assets/img6.jpg",
        videoPath: 'assets/videos/example.mov',
        category: 'Thriller',
        year: 2022,
        duration: Duration(hours: 1, minutes: 58)),
  ];
}
