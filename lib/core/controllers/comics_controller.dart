import 'dart:convert';

import 'package:comicbook_app/core/repository/comic_api.dart';
import 'package:comicbook_app/models/comic.dart';
import 'package:http/http.dart';

import '../logs.dart';

class ComicsController {
  final comicApiRepository = ComicAPI();

  Future<List<ComicDTO>> getComics() async {
    final Response response = await comicApiRepository.getComics();
    List<ComicDTO> comics = [];

    final bool validateStatusCode = response.statusCode == 200;
    if (validateStatusCode) {
      Logs.Show("Receive Response OK getComics");
      final Map dataFromAPI = jsonDecode(response.body);

      final List<dynamic> comicsResults = dataFromAPI["results"];



      comics = comicsResults
          .map((comic) =>

              ComicDTO.fromJson(comic)
            )
          .toList();

    }
    else
    {
      Logs.Show("Receive Response Fail");
    }
    return comics;
  }
}