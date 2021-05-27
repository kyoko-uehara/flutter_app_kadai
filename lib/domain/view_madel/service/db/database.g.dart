// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class ShopRecord extends DataClass implements Insertable<ShopRecord> {
  final String genreName;
  final String name;
  final String budgetAverage;
  final String open;
  final String access;
  final String address;
  final String urlsPc;
  final String photoPcS;
  final String photoPcM;
  final String photoPcL;
  ShopRecord(
      {@required this.genreName,
      @required this.name,
      @required this.budgetAverage,
      @required this.open,
      @required this.access,
      @required this.address,
      @required this.urlsPc,
      @required this.photoPcS,
      @required this.photoPcM,
      @required this.photoPcL});
  factory ShopRecord.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final stringType = db.typeSystem.forDartType<String>();
    return ShopRecord(
      genreName: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}genre_name']),
      name: stringType.mapFromDatabaseResponse(data['${effectivePrefix}name']),
      budgetAverage: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}budget_average']),
      open: stringType.mapFromDatabaseResponse(data['${effectivePrefix}open']),
      access:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}access']),
      address:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}address']),
      urlsPc:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}urls_pc']),
      photoPcS: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}photo_pc_s']),
      photoPcM: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}photo_pc_m']),
      photoPcL: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}photo_pc_l']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || genreName != null) {
      map['genre_name'] = Variable<String>(genreName);
    }
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String>(name);
    }
    if (!nullToAbsent || budgetAverage != null) {
      map['budget_average'] = Variable<String>(budgetAverage);
    }
    if (!nullToAbsent || open != null) {
      map['open'] = Variable<String>(open);
    }
    if (!nullToAbsent || access != null) {
      map['access'] = Variable<String>(access);
    }
    if (!nullToAbsent || address != null) {
      map['address'] = Variable<String>(address);
    }
    if (!nullToAbsent || urlsPc != null) {
      map['urls_pc'] = Variable<String>(urlsPc);
    }
    if (!nullToAbsent || photoPcS != null) {
      map['photo_pc_s'] = Variable<String>(photoPcS);
    }
    if (!nullToAbsent || photoPcM != null) {
      map['photo_pc_m'] = Variable<String>(photoPcM);
    }
    if (!nullToAbsent || photoPcL != null) {
      map['photo_pc_l'] = Variable<String>(photoPcL);
    }
    return map;
  }

  ShopRecordsCompanion toCompanion(bool nullToAbsent) {
    return ShopRecordsCompanion(
      genreName: genreName == null && nullToAbsent
          ? const Value.absent()
          : Value(genreName),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      budgetAverage: budgetAverage == null && nullToAbsent
          ? const Value.absent()
          : Value(budgetAverage),
      open: open == null && nullToAbsent ? const Value.absent() : Value(open),
      access:
          access == null && nullToAbsent ? const Value.absent() : Value(access),
      address: address == null && nullToAbsent
          ? const Value.absent()
          : Value(address),
      urlsPc:
          urlsPc == null && nullToAbsent ? const Value.absent() : Value(urlsPc),
      photoPcS: photoPcS == null && nullToAbsent
          ? const Value.absent()
          : Value(photoPcS),
      photoPcM: photoPcM == null && nullToAbsent
          ? const Value.absent()
          : Value(photoPcM),
      photoPcL: photoPcL == null && nullToAbsent
          ? const Value.absent()
          : Value(photoPcL),
    );
  }

  factory ShopRecord.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return ShopRecord(
      genreName: serializer.fromJson<String>(json['genreName']),
      name: serializer.fromJson<String>(json['name']),
      budgetAverage: serializer.fromJson<String>(json['budgetAverage']),
      open: serializer.fromJson<String>(json['open']),
      access: serializer.fromJson<String>(json['access']),
      address: serializer.fromJson<String>(json['address']),
      urlsPc: serializer.fromJson<String>(json['urlsPc']),
      photoPcS: serializer.fromJson<String>(json['photoPcS']),
      photoPcM: serializer.fromJson<String>(json['photoPcM']),
      photoPcL: serializer.fromJson<String>(json['photoPcL']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'genreName': serializer.toJson<String>(genreName),
      'name': serializer.toJson<String>(name),
      'budgetAverage': serializer.toJson<String>(budgetAverage),
      'open': serializer.toJson<String>(open),
      'access': serializer.toJson<String>(access),
      'address': serializer.toJson<String>(address),
      'urlsPc': serializer.toJson<String>(urlsPc),
      'photoPcS': serializer.toJson<String>(photoPcS),
      'photoPcM': serializer.toJson<String>(photoPcM),
      'photoPcL': serializer.toJson<String>(photoPcL),
    };
  }

  ShopRecord copyWith(
          {String genreName,
          String name,
          String budgetAverage,
          String open,
          String access,
          String address,
          String urlsPc,
          String photoPcS,
          String photoPcM,
          String photoPcL}) =>
      ShopRecord(
        genreName: genreName ?? this.genreName,
        name: name ?? this.name,
        budgetAverage: budgetAverage ?? this.budgetAverage,
        open: open ?? this.open,
        access: access ?? this.access,
        address: address ?? this.address,
        urlsPc: urlsPc ?? this.urlsPc,
        photoPcS: photoPcS ?? this.photoPcS,
        photoPcM: photoPcM ?? this.photoPcM,
        photoPcL: photoPcL ?? this.photoPcL,
      );
  @override
  String toString() {
    return (StringBuffer('ShopRecord(')
          ..write('genreName: $genreName, ')
          ..write('name: $name, ')
          ..write('budgetAverage: $budgetAverage, ')
          ..write('open: $open, ')
          ..write('access: $access, ')
          ..write('address: $address, ')
          ..write('urlsPc: $urlsPc, ')
          ..write('photoPcS: $photoPcS, ')
          ..write('photoPcM: $photoPcM, ')
          ..write('photoPcL: $photoPcL')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      genreName.hashCode,
      $mrjc(
          name.hashCode,
          $mrjc(
              budgetAverage.hashCode,
              $mrjc(
                  open.hashCode,
                  $mrjc(
                      access.hashCode,
                      $mrjc(
                          address.hashCode,
                          $mrjc(
                              urlsPc.hashCode,
                              $mrjc(
                                  photoPcS.hashCode,
                                  $mrjc(photoPcM.hashCode,
                                      photoPcL.hashCode))))))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is ShopRecord &&
          other.genreName == this.genreName &&
          other.name == this.name &&
          other.budgetAverage == this.budgetAverage &&
          other.open == this.open &&
          other.access == this.access &&
          other.address == this.address &&
          other.urlsPc == this.urlsPc &&
          other.photoPcS == this.photoPcS &&
          other.photoPcM == this.photoPcM &&
          other.photoPcL == this.photoPcL);
}

class ShopRecordsCompanion extends UpdateCompanion<ShopRecord> {
  final Value<String> genreName;
  final Value<String> name;
  final Value<String> budgetAverage;
  final Value<String> open;
  final Value<String> access;
  final Value<String> address;
  final Value<String> urlsPc;
  final Value<String> photoPcS;
  final Value<String> photoPcM;
  final Value<String> photoPcL;
  const ShopRecordsCompanion({
    this.genreName = const Value.absent(),
    this.name = const Value.absent(),
    this.budgetAverage = const Value.absent(),
    this.open = const Value.absent(),
    this.access = const Value.absent(),
    this.address = const Value.absent(),
    this.urlsPc = const Value.absent(),
    this.photoPcS = const Value.absent(),
    this.photoPcM = const Value.absent(),
    this.photoPcL = const Value.absent(),
  });
  ShopRecordsCompanion.insert({
    @required String genreName,
    @required String name,
    @required String budgetAverage,
    @required String open,
    @required String access,
    @required String address,
    @required String urlsPc,
    @required String photoPcS,
    @required String photoPcM,
    @required String photoPcL,
  })  : genreName = Value(genreName),
        name = Value(name),
        budgetAverage = Value(budgetAverage),
        open = Value(open),
        access = Value(access),
        address = Value(address),
        urlsPc = Value(urlsPc),
        photoPcS = Value(photoPcS),
        photoPcM = Value(photoPcM),
        photoPcL = Value(photoPcL);
  static Insertable<ShopRecord> custom({
    Expression<String> genreName,
    Expression<String> name,
    Expression<String> budgetAverage,
    Expression<String> open,
    Expression<String> access,
    Expression<String> address,
    Expression<String> urlsPc,
    Expression<String> photoPcS,
    Expression<String> photoPcM,
    Expression<String> photoPcL,
  }) {
    return RawValuesInsertable({
      if (genreName != null) 'genre_name': genreName,
      if (name != null) 'name': name,
      if (budgetAverage != null) 'budget_average': budgetAverage,
      if (open != null) 'open': open,
      if (access != null) 'access': access,
      if (address != null) 'address': address,
      if (urlsPc != null) 'urls_pc': urlsPc,
      if (photoPcS != null) 'photo_pc_s': photoPcS,
      if (photoPcM != null) 'photo_pc_m': photoPcM,
      if (photoPcL != null) 'photo_pc_l': photoPcL,
    });
  }

  ShopRecordsCompanion copyWith(
      {Value<String> genreName,
      Value<String> name,
      Value<String> budgetAverage,
      Value<String> open,
      Value<String> access,
      Value<String> address,
      Value<String> urlsPc,
      Value<String> photoPcS,
      Value<String> photoPcM,
      Value<String> photoPcL}) {
    return ShopRecordsCompanion(
      genreName: genreName ?? this.genreName,
      name: name ?? this.name,
      budgetAverage: budgetAverage ?? this.budgetAverage,
      open: open ?? this.open,
      access: access ?? this.access,
      address: address ?? this.address,
      urlsPc: urlsPc ?? this.urlsPc,
      photoPcS: photoPcS ?? this.photoPcS,
      photoPcM: photoPcM ?? this.photoPcM,
      photoPcL: photoPcL ?? this.photoPcL,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (genreName.present) {
      map['genre_name'] = Variable<String>(genreName.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (budgetAverage.present) {
      map['budget_average'] = Variable<String>(budgetAverage.value);
    }
    if (open.present) {
      map['open'] = Variable<String>(open.value);
    }
    if (access.present) {
      map['access'] = Variable<String>(access.value);
    }
    if (address.present) {
      map['address'] = Variable<String>(address.value);
    }
    if (urlsPc.present) {
      map['urls_pc'] = Variable<String>(urlsPc.value);
    }
    if (photoPcS.present) {
      map['photo_pc_s'] = Variable<String>(photoPcS.value);
    }
    if (photoPcM.present) {
      map['photo_pc_m'] = Variable<String>(photoPcM.value);
    }
    if (photoPcL.present) {
      map['photo_pc_l'] = Variable<String>(photoPcL.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ShopRecordsCompanion(')
          ..write('genreName: $genreName, ')
          ..write('name: $name, ')
          ..write('budgetAverage: $budgetAverage, ')
          ..write('open: $open, ')
          ..write('access: $access, ')
          ..write('address: $address, ')
          ..write('urlsPc: $urlsPc, ')
          ..write('photoPcS: $photoPcS, ')
          ..write('photoPcM: $photoPcM, ')
          ..write('photoPcL: $photoPcL')
          ..write(')'))
        .toString();
  }
}

class $ShopRecordsTable extends ShopRecords
    with TableInfo<$ShopRecordsTable, ShopRecord> {
  final GeneratedDatabase _db;
  final String _alias;
  $ShopRecordsTable(this._db, [this._alias]);
  final VerificationMeta _genreNameMeta = const VerificationMeta('genreName');
  GeneratedTextColumn _genreName;
  @override
  GeneratedTextColumn get genreName => _genreName ??= _constructGenreName();
  GeneratedTextColumn _constructGenreName() {
    return GeneratedTextColumn(
      'genre_name',
      $tableName,
      false,
    );
  }

  final VerificationMeta _nameMeta = const VerificationMeta('name');
  GeneratedTextColumn _name;
  @override
  GeneratedTextColumn get name => _name ??= _constructName();
  GeneratedTextColumn _constructName() {
    return GeneratedTextColumn(
      'name',
      $tableName,
      false,
    );
  }

  final VerificationMeta _budgetAverageMeta =
      const VerificationMeta('budgetAverage');
  GeneratedTextColumn _budgetAverage;
  @override
  GeneratedTextColumn get budgetAverage =>
      _budgetAverage ??= _constructBudgetAverage();
  GeneratedTextColumn _constructBudgetAverage() {
    return GeneratedTextColumn(
      'budget_average',
      $tableName,
      false,
    );
  }

  final VerificationMeta _openMeta = const VerificationMeta('open');
  GeneratedTextColumn _open;
  @override
  GeneratedTextColumn get open => _open ??= _constructOpen();
  GeneratedTextColumn _constructOpen() {
    return GeneratedTextColumn(
      'open',
      $tableName,
      false,
    );
  }

  final VerificationMeta _accessMeta = const VerificationMeta('access');
  GeneratedTextColumn _access;
  @override
  GeneratedTextColumn get access => _access ??= _constructAccess();
  GeneratedTextColumn _constructAccess() {
    return GeneratedTextColumn(
      'access',
      $tableName,
      false,
    );
  }

  final VerificationMeta _addressMeta = const VerificationMeta('address');
  GeneratedTextColumn _address;
  @override
  GeneratedTextColumn get address => _address ??= _constructAddress();
  GeneratedTextColumn _constructAddress() {
    return GeneratedTextColumn(
      'address',
      $tableName,
      false,
    );
  }

  final VerificationMeta _urlsPcMeta = const VerificationMeta('urlsPc');
  GeneratedTextColumn _urlsPc;
  @override
  GeneratedTextColumn get urlsPc => _urlsPc ??= _constructUrlsPc();
  GeneratedTextColumn _constructUrlsPc() {
    return GeneratedTextColumn(
      'urls_pc',
      $tableName,
      false,
    );
  }

  final VerificationMeta _photoPcSMeta = const VerificationMeta('photoPcS');
  GeneratedTextColumn _photoPcS;
  @override
  GeneratedTextColumn get photoPcS => _photoPcS ??= _constructPhotoPcS();
  GeneratedTextColumn _constructPhotoPcS() {
    return GeneratedTextColumn(
      'photo_pc_s',
      $tableName,
      false,
    );
  }

  final VerificationMeta _photoPcMMeta = const VerificationMeta('photoPcM');
  GeneratedTextColumn _photoPcM;
  @override
  GeneratedTextColumn get photoPcM => _photoPcM ??= _constructPhotoPcM();
  GeneratedTextColumn _constructPhotoPcM() {
    return GeneratedTextColumn(
      'photo_pc_m',
      $tableName,
      false,
    );
  }

  final VerificationMeta _photoPcLMeta = const VerificationMeta('photoPcL');
  GeneratedTextColumn _photoPcL;
  @override
  GeneratedTextColumn get photoPcL => _photoPcL ??= _constructPhotoPcL();
  GeneratedTextColumn _constructPhotoPcL() {
    return GeneratedTextColumn(
      'photo_pc_l',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [
        genreName,
        name,
        budgetAverage,
        open,
        access,
        address,
        urlsPc,
        photoPcS,
        photoPcM,
        photoPcL
      ];
  @override
  $ShopRecordsTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'shop_records';
  @override
  final String actualTableName = 'shop_records';
  @override
  VerificationContext validateIntegrity(Insertable<ShopRecord> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('genre_name')) {
      context.handle(_genreNameMeta,
          genreName.isAcceptableOrUnknown(data['genre_name'], _genreNameMeta));
    } else if (isInserting) {
      context.missing(_genreNameMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name'], _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('budget_average')) {
      context.handle(
          _budgetAverageMeta,
          budgetAverage.isAcceptableOrUnknown(
              data['budget_average'], _budgetAverageMeta));
    } else if (isInserting) {
      context.missing(_budgetAverageMeta);
    }
    if (data.containsKey('open')) {
      context.handle(
          _openMeta, open.isAcceptableOrUnknown(data['open'], _openMeta));
    } else if (isInserting) {
      context.missing(_openMeta);
    }
    if (data.containsKey('access')) {
      context.handle(_accessMeta,
          access.isAcceptableOrUnknown(data['access'], _accessMeta));
    } else if (isInserting) {
      context.missing(_accessMeta);
    }
    if (data.containsKey('address')) {
      context.handle(_addressMeta,
          address.isAcceptableOrUnknown(data['address'], _addressMeta));
    } else if (isInserting) {
      context.missing(_addressMeta);
    }
    if (data.containsKey('urls_pc')) {
      context.handle(_urlsPcMeta,
          urlsPc.isAcceptableOrUnknown(data['urls_pc'], _urlsPcMeta));
    } else if (isInserting) {
      context.missing(_urlsPcMeta);
    }
    if (data.containsKey('photo_pc_s')) {
      context.handle(_photoPcSMeta,
          photoPcS.isAcceptableOrUnknown(data['photo_pc_s'], _photoPcSMeta));
    } else if (isInserting) {
      context.missing(_photoPcSMeta);
    }
    if (data.containsKey('photo_pc_m')) {
      context.handle(_photoPcMMeta,
          photoPcM.isAcceptableOrUnknown(data['photo_pc_m'], _photoPcMMeta));
    } else if (isInserting) {
      context.missing(_photoPcMMeta);
    }
    if (data.containsKey('photo_pc_l')) {
      context.handle(_photoPcLMeta,
          photoPcL.isAcceptableOrUnknown(data['photo_pc_l'], _photoPcLMeta));
    } else if (isInserting) {
      context.missing(_photoPcLMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => <GeneratedColumn>{};
  @override
  ShopRecord map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return ShopRecord.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $ShopRecordsTable createAlias(String alias) {
    return $ShopRecordsTable(_db, alias);
  }
}

class MiddleAreaRecord extends DataClass
    implements Insertable<MiddleAreaRecord> {
  final String code;
  final String name;
  MiddleAreaRecord({@required this.code, @required this.name});
  factory MiddleAreaRecord.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final stringType = db.typeSystem.forDartType<String>();
    return MiddleAreaRecord(
      code: stringType.mapFromDatabaseResponse(data['${effectivePrefix}code']),
      name: stringType.mapFromDatabaseResponse(data['${effectivePrefix}name']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || code != null) {
      map['code'] = Variable<String>(code);
    }
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String>(name);
    }
    return map;
  }

  MiddleAreaRecordsCompanion toCompanion(bool nullToAbsent) {
    return MiddleAreaRecordsCompanion(
      code: code == null && nullToAbsent ? const Value.absent() : Value(code),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
    );
  }

  factory MiddleAreaRecord.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return MiddleAreaRecord(
      code: serializer.fromJson<String>(json['code']),
      name: serializer.fromJson<String>(json['name']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'code': serializer.toJson<String>(code),
      'name': serializer.toJson<String>(name),
    };
  }

  MiddleAreaRecord copyWith({String code, String name}) => MiddleAreaRecord(
        code: code ?? this.code,
        name: name ?? this.name,
      );
  @override
  String toString() {
    return (StringBuffer('MiddleAreaRecord(')
          ..write('code: $code, ')
          ..write('name: $name')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(code.hashCode, name.hashCode));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is MiddleAreaRecord &&
          other.code == this.code &&
          other.name == this.name);
}

class MiddleAreaRecordsCompanion extends UpdateCompanion<MiddleAreaRecord> {
  final Value<String> code;
  final Value<String> name;
  const MiddleAreaRecordsCompanion({
    this.code = const Value.absent(),
    this.name = const Value.absent(),
  });
  MiddleAreaRecordsCompanion.insert({
    @required String code,
    @required String name,
  })  : code = Value(code),
        name = Value(name);
  static Insertable<MiddleAreaRecord> custom({
    Expression<String> code,
    Expression<String> name,
  }) {
    return RawValuesInsertable({
      if (code != null) 'code': code,
      if (name != null) 'name': name,
    });
  }

  MiddleAreaRecordsCompanion copyWith(
      {Value<String> code, Value<String> name}) {
    return MiddleAreaRecordsCompanion(
      code: code ?? this.code,
      name: name ?? this.name,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (code.present) {
      map['code'] = Variable<String>(code.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MiddleAreaRecordsCompanion(')
          ..write('code: $code, ')
          ..write('name: $name')
          ..write(')'))
        .toString();
  }
}

class $MiddleAreaRecordsTable extends MiddleAreaRecords
    with TableInfo<$MiddleAreaRecordsTable, MiddleAreaRecord> {
  final GeneratedDatabase _db;
  final String _alias;
  $MiddleAreaRecordsTable(this._db, [this._alias]);
  final VerificationMeta _codeMeta = const VerificationMeta('code');
  GeneratedTextColumn _code;
  @override
  GeneratedTextColumn get code => _code ??= _constructCode();
  GeneratedTextColumn _constructCode() {
    return GeneratedTextColumn(
      'code',
      $tableName,
      false,
    );
  }

  final VerificationMeta _nameMeta = const VerificationMeta('name');
  GeneratedTextColumn _name;
  @override
  GeneratedTextColumn get name => _name ??= _constructName();
  GeneratedTextColumn _constructName() {
    return GeneratedTextColumn(
      'name',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [code, name];
  @override
  $MiddleAreaRecordsTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'middle_area_records';
  @override
  final String actualTableName = 'middle_area_records';
  @override
  VerificationContext validateIntegrity(Insertable<MiddleAreaRecord> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('code')) {
      context.handle(
          _codeMeta, code.isAcceptableOrUnknown(data['code'], _codeMeta));
    } else if (isInserting) {
      context.missing(_codeMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name'], _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => <GeneratedColumn>{};
  @override
  MiddleAreaRecord map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return MiddleAreaRecord.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $MiddleAreaRecordsTable createAlias(String alias) {
    return $MiddleAreaRecordsTable(_db, alias);
  }
}

abstract class _$MyDatabase extends GeneratedDatabase {
  _$MyDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  $ShopRecordsTable _shopRecords;
  $ShopRecordsTable get shopRecords => _shopRecords ??= $ShopRecordsTable(this);
  $MiddleAreaRecordsTable _middleAreaRecords;
  $MiddleAreaRecordsTable get middleAreaRecords =>
      _middleAreaRecords ??= $MiddleAreaRecordsTable(this);
  Dao _dao;
  Dao get dao => _dao ??= Dao(this as MyDatabase);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [shopRecords, middleAreaRecords];
}
