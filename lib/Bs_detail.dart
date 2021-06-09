import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'main.dart';


class BsDetailState {
  Path _path;

  BsDetailState(this._path);

  fetchFileData()async {
    String responseString;
    responseString = await rootBundle.loadString('$_path');

    Home(responseString);
  }
}