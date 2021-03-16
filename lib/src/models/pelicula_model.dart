class Peliculas {
  List<Pelicula> items = new List();

  Peliculas();
  Peliculas.fromJsonList(List<dynamic> jsonList) {
    if (jsonList == null) return;

    for (var item in jsonList) {
      final pelicula = new Pelicula.fromJsonMap(item);
      items.add(pelicula);
    }
  }
}

class Pelicula {
  String uniqueId;

  int voteCount;
  int id;
  bool video;
  double voteAverage;
  String title;
  double popularity;
  String posterPath;
  String originalLanguage;
  String originalTitle;
  List<int> genreIds;
  String backdropPath;
  bool adult;
  String overview;
  String releaseDate;

// "adult": false,
//       "backdrop_path": "/srYya1ZlI97Au4jUYAktDe3avyA.jpg",
//       "genre_ids": [
//         14,
//         28,
//         12
//       ],
//       "id": 464052,
//       "original_language": "en",
//       "original_title": "Wonder Woman 1984",
//       "overview": "En 1984, en plena guerra fría, Diana Prince, conocida como Wonder Woman se enfrenta al empresario Maxwell Lord y a su antigua amiga Barbara Minerva / Cheetah, una villana que posee fuerza y agilidad sobrehumanas.",
//       "popularity": 3291.297,
//       "poster_path": "/oG8rC5WEUFEMsMeBLGJWspJ1Gp5.jpg",
//       "release_date": "2020-12-16",
//       "title": "Wonder Woman 1984",
//       "video": false,
//       "vote_average": 7,
//       "vote_count": 3261

  Pelicula({
    this.voteCount,
    this.id,
    this.video,
    this.voteAverage,
    this.title,
    this.popularity,
    this.posterPath,
    this.originalLanguage,
    this.originalTitle,
    this.genreIds,
    this.backdropPath,
    this.adult,
    this.overview,
    this.releaseDate,
  });

  Pelicula.fromJsonMap(Map<String, dynamic> json) {
    voteCount = json['vote_count'];
    id = json['id'];
    video = json['video'];
    voteAverage = json['vote_average'] / 1;
    title = json['title'];
    popularity = json['popularity'] / 1;
    posterPath = json['poster_path'];
    originalLanguage = json['original_language'];
    originalTitle = json['original_title'];
    genreIds = json['genre_ids'].cast<int>();
    backdropPath = json['backdrop_path'];
    adult = json['adult'];
    overview = json['overview'];
    releaseDate = json['release_date'];
  }

  getPosterImg() {
    if (posterPath == null) {
      return 'https://www.alltruismo.com/images/profile/default.png';
    } else {
      return 'https://image.tmdb.org/t/p/w500/$posterPath';
    }
  }

  getBackgroundImg() {
    if (posterPath == null) {
      return 'https://www.alltruismo.com/images/profile/default.png';
    } else {
      return 'https://image.tmdb.org/t/p/w500/$backdropPath';
    }
  }
}
