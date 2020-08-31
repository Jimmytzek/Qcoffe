import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';


class PreferecensUser{
  static final PreferecensUser _instancia = new PreferecensUser._internal();
  factory PreferecensUser(){
    return _instancia;
  }
  PreferecensUser._internal();

  SharedPreferences _pref;

  initPrefs() async {

    WidgetsFlutterBinding.ensureInitialized();
    this._pref = await SharedPreferences.getInstance();

  }

  get token{
    return _pref.getString('token')??''; 
  }

  set token (String cadena){
    _pref.setString('token', cadena);
  }
}
