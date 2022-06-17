import 'package:commerce/models/user.dart';
import 'package:shared_preferences/shared_preferences.dart';


enum PrefKey {
  loggedIn , name , email , language
}
class SharedPrefController {
  static final SharedPrefController _instanc = SharedPrefController._internal();
  late SharedPreferences _sharedPreferences;
  SharedPrefController._internal();

  factory SharedPrefController() {
    return _instanc;
  }

  Future<void> initPreferences() async {
    _sharedPreferences = await SharedPreferences.getInstance();
  }

  Future<void> save({required User user}) async{
    await _sharedPreferences.setBool(PrefKey.loggedIn.toString(), true);
    await _sharedPreferences.setString(PrefKey.email.toString(), user.email);
    await _sharedPreferences.setString(PrefKey.name.toString(), user.name);
  }
  bool get loggedIn => _sharedPreferences.getBool(PrefKey.loggedIn.toString()) ?? false;

  // Object? getValueFor(String key){
  //   if(sharedPreferences.containsKey(key)){
  //     return sharedPreferences.get(key);
  //   }
  //   return null;
  // }

  T? getValueFor<T> ({required String key}) {
    return _sharedPreferences.get(key) as T;
  }

  Future<bool> setName(String value) async {
    return await _sharedPreferences.setString(PrefKey.name.toString(), value);
  }
  Future<bool> removeValueFor(String key) async{
    if(_sharedPreferences.containsKey(key)){
      return _sharedPreferences.remove(key);
    }
    return false;
  }

  Future<bool> changeLanguage(String language) async{
    return await _sharedPreferences.setString(PrefKey.language.toString(), language);
  }

  String get language => _sharedPreferences.getString(PrefKey.language.toString()) ?? 'en';
  Future<bool> clear() async{
    return await _sharedPreferences.clear();
  }
}