import 'dart:convert';


import 'package:comicbook_app/core/repository/comics_details_api.dart';
import 'package:comicbook_app/models/comic_details.dart';
import 'package:http/http.dart';

import '../logs.dart';

class CharactersController {
  final comicDetailsApiRepository = ComisDetailsAPI();

  Future<ComicDetailsDTO> getComicsDetails(String url) async {
    final Response response = await comicDetailsApiRepository.getComicsDetails(url);
    var comicDetails=ComicDetailsDTO();


    final bool validateStatusCode = response.statusCode == 200;
    if (validateStatusCode) {
      Logs.Show("Receive Response OK getComicsDetails" );
      final Map dataFromAPI = jsonDecode( response.body );


  final Map<dynamic, dynamic> comicsDetailsResults = dataFromAPI["results"];

      try {
  comicDetails = ComicDetailsDTO.fromJson(comicsDetailsResults);
}
catch(ex)
    {
      Logs.Show(ex.toString());
    }

    }
    else
    {
      Logs.Show("Receive Response Fail");
    }
    Logs.Show("Finish Receive Details");
    return comicDetails;
  }
}