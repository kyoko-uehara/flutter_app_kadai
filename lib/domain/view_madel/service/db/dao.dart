import 'package:flutter_app_kadai/domain/view_madel/service/db/database.dart';
import 'package:moor/moor.dart';

part 'dao.g.dart';

@UseDao(tables: [ShopRecords,MiddleAreaRecords])
class Dao extends DatabaseAccessor<MyDatabase> with _$DaoMixin {
  Dao(MyDatabase db) : super(db);

  ///////////////
  //グルメサーチ //
  ///////////////
  Future clearShopDB() async {
    await delete(shopRecords).go();
  }

  Future insertShopDB(List<ShopRecord> shops) async {
    await batch((batch) {
      batch.insertAll(shopRecords, shops);
    });
  }

  Future<List<ShopRecord>> get shopFromDB =>
      select(shopRecords).get();

  Future<List<ShopRecord>> insertAndReadShopFromDB(List<ShopRecord> shops) =>
      transaction(() async {
        await clearShopDB();
        await insertShopDB(shops);
        return await shopFromDB;
      });

  /////////////////
  // 中エリアマスタ //
  /////////////////
  Future clearMiddleAreaDB() async {
    await delete(middleAreaRecords).go();
  }

  Future insertMiddleAreaDB(List<MiddleAreaRecord> middleAreas) async {
    await batch((batch) {
      batch.insertAll(middleAreaRecords, middleAreas);
    });
  }

  Future<List<MiddleAreaRecord>> get middleAreaFromDB =>
      select(middleAreaRecords).get();

  Future<List<MiddleAreaRecord>> insertAndReadMiddleAreaFromDB(List<MiddleAreaRecord> middleAreas, int start) =>
      transaction(() async {
        //if (start == 1){
          await clearMiddleAreaDB();
        //}
        await insertMiddleAreaDB(middleAreas);
        return await middleAreaFromDB;
      });
}