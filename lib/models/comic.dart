
import 'package:comicbook_app/models/image.dart';
import 'package:comicbook_app/models/volume.dart';

class ComicDTO {
  String dateAdded;
  VolumeDTO volume;
  ImageDTO image;
  String? name;
  String issueNumber;
  String detailURL;

  String getName()
  {
    if(name==null || name!.isEmpty)
    {
      return volume.name + " " + issueNumber;
    }
    else
    {
      return name! + " " + issueNumber;
    }
  }

  ComicDTO.fromJson(Map<dynamic, dynamic> json)
      : dateAdded = json['date_added'],
        volume = VolumeDTO.fromJson(json['volume']),
        image = ImageDTO.fromJson(json['image']),
        name = json['name'],
        issueNumber = json['issue_number'],
        detailURL = json['api_detail_url'];
}