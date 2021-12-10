import 'package:comicbook_app/constants/globals.dart';
import 'package:http/http.dart' as http;

class ComicAPI
{
  Future<http.Response> getComics() async {
    Uri uri = Uri.parse(Globals.apiVineComics);
    return await http.get(uri, headers: <String, String>{
      "Accept": "application/json",
      "Access-Control-Allow-Origin": "*",
      "Access-Control-Allow-Methods": "POST, GET, OPTIONS, PUT, DELETE, HEAD",
    });
  }
}