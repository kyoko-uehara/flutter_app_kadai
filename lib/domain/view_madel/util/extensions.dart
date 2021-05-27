//Dartのモデルクラス => DBのテーブルクラス
import 'package:flutter_app_kadai/domain/view_madel/model/gourmet_model.dart';
import 'package:flutter_app_kadai/domain/view_madel/model/middle_area_model.dart';
import 'package:flutter_app_kadai/domain/view_madel/service/db/database.dart' as db;

extension ConvertToMiddleAreaRecord on List<MiddleArea> {
  List<db.MiddleAreaRecord> toMiddleAreaRecords(List<MiddleArea> middleAreas) {
    var middleAreaRecords = List<db.MiddleAreaRecord>();
    middleAreas.forEach((area) {
      middleAreaRecords.add(
          db.MiddleAreaRecord(code: area.code ?? "", name: area.name ?? ""));
    });
    return middleAreaRecords;
  }
}

//DBのテーブルクラス => Dartのモデルクラス
extension ConvertToMiddleAreaModel on List<db.MiddleAreaRecord> {
  List<MiddleArea> toMiddleAreas(List<db.MiddleAreaRecord> middleAreaRecords) {
    var middleAreas = List<MiddleArea>();
    middleAreaRecords.forEach((area) {
      middleAreas.add(MiddleArea(code: area.code ?? "", name: area.name ?? ""));
    });
    return middleAreas;
  }
}

//Dartのモデルクラス => DBのテーブルクラス
extension ConvertToShopRecord on List<Shop> {
  List<db.ShopRecord> toShopRecords(List<Shop> shopInfos) {
    var shopRecords = List<db.ShopRecord>();
    shopInfos.forEach((info) {
      shopRecords.add(db.ShopRecord(
          genreName: info.genre.genreName ?? "",
          name: info.name ?? "",
          budgetAverage: info.budget.budgetAverage ?? "",
          open: info.open ?? "",
          access: info.access ?? "",
          address: info.address ?? "",
          urlsPc: info.urls.urlsPc ?? "",
          photoPcS: info.photo.photoPc.photoPcS ?? "",
          photoPcM: info.photo.photoPc.photoPcM ?? "",
          photoPcL: info.photo.photoPc.photoPcL ?? ""));
    });
    return shopRecords;
  }
}

//DBのテーブルクラス => Dartのモデルクラス
extension ConvertToShopModel on List<db.ShopRecord> {
  List<Shop> toShopInfos(List<db.ShopRecord> shopRecords) {
    var shopInfos = List<Shop>();
    shopRecords.forEach((info) {
      shopInfos.add(Shop(
          genre: Genre(genreName: info.genreName) ?? Genre(genreName: ""),
          name: info.name ?? "",
          budget: Budget(budgetAverage: info.budgetAverage) ??
              Budget(budgetAverage: ""),
          open: info.open ?? "",
          access: info.access ?? "",
          address: info.address ?? "",
          urls: Urls(urlsPc: info.urlsPc) ?? Urls(urlsPc: ""),
          photo: Photo(
                  photoPc: PhotoPc(
                      photoPcL: info.photoPcL,
                      photoPcM: info.photoPcM,
                      photoPcS: info.photoPcS)) ??
              Photo(
                  photoPc: PhotoPc(photoPcL: "", photoPcM: "", photoPcS: ""))));
    });
    return shopInfos;
  }
}
