
import 'package:comicbook_app/models/character_credits.dart';
import 'package:comicbook_app/models/team_credits.dart';

import 'location_credits.dart';

class ComicDetailsDTO {

  CharacterCredits? characters;
  TeamCreditsDTO? teams;
  LocationCreditsDTO? locations;

  ComicDetailsDTO();

  ComicDetailsDTO.fromJson(Map<dynamic, dynamic> json):
        characters = CharacterCredits.fromJson(json["character_credits"]),
        teams = TeamCreditsDTO.fromJson(json["team_credits"]),
        locations = LocationCreditsDTO.fromJson(json["location_credits"]);
}