import 'dart:io';

import 'package:flutter_app_kadai/domain/view_madel/service/db/dao.dart';
import 'package:moor/ffi.dart';
import 'package:moor/moor.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;

part 'database.g.dart';


class ShopRecords extends Table{
//  TextColumn get resultsAvailable => text()();
  TextColumn get genreName => text()();
  TextColumn get name => text()();
  TextColumn get budgetAverage => text()();
  TextColumn get open => text()();
  TextColumn get access => text()();
  TextColumn get address => text()();
  TextColumn get urlsPc => text()();
  TextColumn get photoPcS => text()();
  TextColumn get photoPcM => text()();
  TextColumn get photoPcL => text()();
}

class MiddleAreaRecords extends Table{
//  TextColumn get resultsAvailable => text()();
  TextColumn get code => text()();
  TextColumn get name => text()();
}

@UseMoor(tables: [ShopRecords,MiddleAreaRecords], daos: [Dao])
class MyDatabase extends _$MyDatabase {
  MyDatabase() : super(_openConnection());
  @override
  int get schemaVersion => 1;
}

LazyDatabase _openConnection() {
  // the LazyDatabase util lets us find the right location for the file async.
  return LazyDatabase(() async {
    // put the database file, called db.sqlite here, into the documents folder
    // for your app.
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'kadai.sqlite'));
    return VmDatabase(file);
  });
}
