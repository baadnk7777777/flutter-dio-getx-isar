import 'package:isar/isar.dart';

class Database {
  Database(this._isar);

  late final Isar _isar;

  Isar get isar => _isar;
}
