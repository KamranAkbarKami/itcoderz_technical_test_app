class MoviesModel {
  MoviesModel({
      this.search, 
      this.totalResults, 
      this.response,});

  MoviesModel.fromJson(dynamic json) {
    if (json['Search'] != null) {
      search = [];
      json['Search'].forEach((v) {
        search?.add(Search.fromJson(v));
      });
    }
    totalResults = json['totalResults'];
    response = json['Response'];
  }
  List<Search>? search;
  String? totalResults;
  String? response;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (search != null) {
      map['Search'] = search?.map((v) => v.toJson()).toList();
    }
    map['totalResults'] = totalResults;
    map['Response'] = response;
    return map;
  }

}

class Search {
  Search({
      this.title, 
      this.year, 
      this.imdbID, 
      this.type, 
      this.poster,});

  Search.fromJson(dynamic json) {
    title = json['Title'];
    year = json['Year'];
    imdbID = json['imdbID'];
    type = json['Type'];
    poster = json['Poster'];
  }
  String? title;
  String? year;
  String? imdbID;
  String? type;
  String? poster;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['Title'] = title;
    map['Year'] = year;
    map['imdbID'] = imdbID;
    map['Type'] = type;
    map['Poster'] = poster;
    return map;
  }

}