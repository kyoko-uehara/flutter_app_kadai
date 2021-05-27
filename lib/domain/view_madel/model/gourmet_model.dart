import 'package:json_annotation/json_annotation.dart';

part 'gourmet_model.g.dart';

@JsonSerializable()
class Gourmet {
  @JsonKey(name: "results") final GourmetResults gourmetResults;

  Gourmet({this.gourmetResults});

  factory Gourmet.fromJson(Map<String, dynamic> json) => _$GourmetFromJson(json);
  Map<String, dynamic> toJson() => _$GourmetToJson(this);
}

@JsonSerializable()
class GourmetResults{
  //クエリー条件にマッチする、検索結果の全件数
  @JsonKey(name: "results_available") final int resultsAvailable;
  @JsonKey(name : "shop") final List<Shop> shops;

  GourmetResults({this.resultsAvailable, this.shops});

  factory GourmetResults.fromJson(Map<String, dynamic> json) => _$GourmetResultsFromJson(json);
  Map<String, dynamic> toJson() =>_$GourmetResultsToJson(this);
}

@JsonSerializable()
class Shop {
  //お店ジャンル
  @JsonKey(name: "genre") final Genre genre;
  //掲載店名
  @JsonKey(name: "name") final String name;
  //ディナー予算
  @JsonKey(name: "budget") final Budget budget;
  //営業時間
  @JsonKey(name: "open") final String open;
  //交通アクセス
  @JsonKey(name: "access") final String access;
  //住所
  @JsonKey(name: "address") final String address;
  //店舗URL
  @JsonKey(name: "urls") final Urls urls;
  //写真
  @JsonKey(name: "photo") final Photo photo;

  Shop({this.genre, this.name, this.budget, this.open, this.access,
    this.address, this.urls, this.photo});

  factory Shop.fromJson(Map<String, dynamic> json) => _$ShopFromJson(json);
  Map<String, dynamic> toJson() =>_$ShopToJson(this);

}

@JsonSerializable()
class Genre {
  @JsonKey(name : "name") final String genreName;

  Genre({this.genreName});

  factory Genre.fromJson(Map<String, dynamic> json) => _$GenreFromJson(json);
  Map<String, dynamic> toJson() =>_$GenreToJson(this);
}

@JsonSerializable()
class Budget {
  @JsonKey(name : "average") final String budgetAverage;

  Budget({this.budgetAverage});

  factory Budget.fromJson(Map<String, dynamic> json) => _$BudgetFromJson(json);
  Map<String, dynamic> toJson() =>_$BudgetToJson(this);
}

@JsonSerializable()
class Urls {
  @JsonKey(name : "pc") final String urlsPc;

  Urls({this.urlsPc});

  factory Urls.fromJson(Map<String, dynamic> json) => _$UrlsFromJson(json);
  Map<String, dynamic> toJson() =>_$UrlsToJson(this);
}

@JsonSerializable()
class Photo {
  @JsonKey(name : "pc") final PhotoPc photoPc;

  Photo({this.photoPc});

  factory Photo.fromJson(Map<String, dynamic> json) => _$PhotoFromJson(json);
  Map<String, dynamic> toJson() =>_$PhotoToJson(this);
}

@JsonSerializable()
class PhotoPc {
  @JsonKey(name : "l") final String photoPcL;
  @JsonKey(name : "m") final String photoPcM;
  @JsonKey(name : "s") final String photoPcS;

  PhotoPc({this.photoPcL, this.photoPcM, this.photoPcS});

  factory PhotoPc.fromJson(Map<String, dynamic> json) => _$PhotoPcFromJson(json);
  Map<String, dynamic> toJson() =>_$PhotoPcToJson(this);
}