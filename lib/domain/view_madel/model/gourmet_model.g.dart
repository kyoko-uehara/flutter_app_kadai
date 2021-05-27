// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gourmet_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Gourmet _$GourmetFromJson(Map<String, dynamic> json) {
  return Gourmet(
    gourmetResults: json['results'] == null
        ? null
        : GourmetResults.fromJson(json['results'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$GourmetToJson(Gourmet instance) => <String, dynamic>{
      'results': instance.gourmetResults,
    };

GourmetResults _$GourmetResultsFromJson(Map<String, dynamic> json) {
  return GourmetResults(
    resultsAvailable: json['results_available'] as int,
    shops: (json['shop'] as List)
        ?.map(
            (e) => e == null ? null : Shop.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$GourmetResultsToJson(GourmetResults instance) =>
    <String, dynamic>{
      'results_available': instance.resultsAvailable,
      'shop': instance.shops,
    };

Shop _$ShopFromJson(Map<String, dynamic> json) {
  return Shop(
    genre: json['genre'] == null
        ? null
        : Genre.fromJson(json['genre'] as Map<String, dynamic>),
    name: json['name'] as String,
    budget: json['budget'] == null
        ? null
        : Budget.fromJson(json['budget'] as Map<String, dynamic>),
    open: json['open'] as String,
    access: json['access'] as String,
    address: json['address'] as String,
    urls: json['urls'] == null
        ? null
        : Urls.fromJson(json['urls'] as Map<String, dynamic>),
    photo: json['photo'] == null
        ? null
        : Photo.fromJson(json['photo'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ShopToJson(Shop instance) => <String, dynamic>{
      'genre': instance.genre,
      'name': instance.name,
      'budget': instance.budget,
      'open': instance.open,
      'access': instance.access,
      'address': instance.address,
      'urls': instance.urls,
      'photo': instance.photo,
    };

Genre _$GenreFromJson(Map<String, dynamic> json) {
  return Genre(
    genreName: json['name'] as String,
  );
}

Map<String, dynamic> _$GenreToJson(Genre instance) => <String, dynamic>{
      'name': instance.genreName,
    };

Budget _$BudgetFromJson(Map<String, dynamic> json) {
  return Budget(
    budgetAverage: json['average'] as String,
  );
}

Map<String, dynamic> _$BudgetToJson(Budget instance) => <String, dynamic>{
      'average': instance.budgetAverage,
    };

Urls _$UrlsFromJson(Map<String, dynamic> json) {
  return Urls(
    urlsPc: json['pc'] as String,
  );
}

Map<String, dynamic> _$UrlsToJson(Urls instance) => <String, dynamic>{
      'pc': instance.urlsPc,
    };

Photo _$PhotoFromJson(Map<String, dynamic> json) {
  return Photo(
    photoPc: json['pc'] == null
        ? null
        : PhotoPc.fromJson(json['pc'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$PhotoToJson(Photo instance) => <String, dynamic>{
      'pc': instance.photoPc,
    };

PhotoPc _$PhotoPcFromJson(Map<String, dynamic> json) {
  return PhotoPc(
    photoPcL: json['l'] as String,
    photoPcM: json['m'] as String,
    photoPcS: json['s'] as String,
  );
}

Map<String, dynamic> _$PhotoPcToJson(PhotoPc instance) => <String, dynamic>{
      'l': instance.photoPcL,
      'm': instance.photoPcM,
      's': instance.photoPcS,
    };
