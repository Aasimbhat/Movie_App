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
        name: 'The Dark Night',
        imagepath: "assets/img1.jpg",
        videoPath: 'assets/videos/example.mov',
        category: 'Thriller',
        year: 2008,
        duration: Duration(hours: 2, minutes: 58)),
    Movie(
        name: 'Iron Man 3',
        imagepath: "assets/img2.jpg",
        videoPath: 'assets/videos/example.mov',
        category: 'Thriller',
        year: 2013,
        duration: Duration(hours: 1, minutes: 58)),
    Movie(
        name: 'The Wolverine',
        imagepath: "assets/img3.jpg",
        videoPath: 'assets/videos/example.mov',
        category: 'Thriller',
        year: 2013,
        duration: Duration(hours: 2, minutes: 23)),
    Movie(
        name: 'Pirates Of The Caribean',
        imagepath: "assets/img4.jpg",
        videoPath: 'assets/videos/example.mov',
        category: 'Thriller',
        year: 2003,
        duration: Duration(hours: 2, minutes: 58)),
    Movie(
        name: 'Spider Man',
        imagepath: "assets/img5.jpg",
        videoPath: 'assets/videos/example.mov',
        category: 'Thriller',
        year: 2021,
        duration: Duration(hours: 2, minutes: 48)),
    Movie(
        name: 'Oblivion',
        imagepath: "assets/img6.jpg",
        videoPath: 'assets/videos/example.mov',
        category: 'Thriller',
        year: 2006,
        duration: Duration(hours: 1, minutes: 45)),
  ];
}
