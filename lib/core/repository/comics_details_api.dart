
import 'package:http/http.dart' as http;

class ComisDetailsAPI
{

  Future<http.Response> getComicsDetails(String url) async {
    Uri uri = Uri.parse(url);
    return await http.get(uri, headers: <String, String>{
      "Accept": "application/json",
      "Access-Control-Allow-Origin": "*",
      "Access-Control-Allow-Methods": "POST, GET, OPTIONS, PUT, DELETE, HEAD",
    });
  }
}