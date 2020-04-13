/// local_storage_service.dart
import 'package:flutter/foundation.dart';
import 'package:my_storage/i_local_storage_repository.dart';

class LocalStorageService {
  LocalStorageService(
      {@required ILocalStorageRepository localStorageRepository})
      : _localStorageRepository = localStorageRepository;

  ILocalStorageRepository _localStorageRepository;

  Future<dynamic> getAll(String key) async {
    return await _localStorageRepository.getAll(key);
  }

  Future<void> save(String key, dynamic item) async {
    await _localStorageRepository.save(key, item);
  }
}
