import 'package:fakng_mobile/core/data/db/db_keys.dart';
import 'package:fakng_mobile/features/vacancies/domain/models/vacancy_model.dart';
import 'package:hive_flutter/hive_flutter.dart';

class DBClient {
  late final HiveInterface _client;
  final Map<String, int> _boxCounter = <String, int>{};

  DBClient() {
    _client = Hive;
    Hive.registerAdapter(VacancyModelAdapter());
  }

  Future<Box<List<VacancyModel>>> openVacanciesBox() async =>
      _openBox<List<VacancyModel>>(name: DBKeys.vacancies, typeID: 0);

  Future<T?> get<T>({
    required Box<T> box,
    required String key,
  }) async {
    return box.get(key);
  }

  Future<void> put({
    required Box box,
    required String key,
    required dynamic model,
  }) async {
    await box.put(key, model);
  }

  Future<void> delete({
    List<String>? keys,
  }) async {
    if (keys == null) {
      await Hive.deleteBoxFromDisk(DBKeys.vacancies);
      await Hive.deleteFromDisk();
    } else {
      Future<void> delete(String key) async {
        await Hive.deleteBoxFromDisk(key);
      }

      keys.forEach(delete);
    }
  }

  Future<Box<T>> _openBox<T>({
    required String name,
    required int typeID,
  }) async {
    if (_client.isBoxOpen(name)) {
      var count = _boxCounter[name] ?? 1;
      count += 1;
      _boxCounter[name] = count;
      return Hive.box(name);
    }

    _boxCounter[name] = 1;

    return Hive.openBox<T>(name);
  }
}
