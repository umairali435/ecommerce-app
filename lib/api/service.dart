import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:blocpractice/model/albumlist.dart';

abstract class AlbumRepo {
  Future<List<Album>> gettingData();
}

class Internetdata extends AlbumRepo {
  @override
  Future<List<Album>> gettingData() async {
    String url = "http://jsonplaceholder.typicode.com/albums";
    var request = await http.get(url);
    var response = jsonDecode(request.body);
    List<Album> album = albumFromJson(request.body);
    return album;
  }
}
