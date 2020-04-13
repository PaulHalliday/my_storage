import 'package:my_storage/i_local_storage_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesRepository implements ILocalStorageRepository {
  @override
  Future getAll(String key) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getInt(key);
  }

  @override
  Future<void> save(String key, item) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setInt(key, item);
  }
}
