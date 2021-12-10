
class ImageDTO {
  String imageURL;

  ImageDTO.fromJson(Map<dynamic, dynamic> json)
      : imageURL = json['original_url'];
}