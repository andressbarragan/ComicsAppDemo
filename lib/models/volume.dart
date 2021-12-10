
class VolumeDTO {
  String name;

  VolumeDTO.fromJson(Map<dynamic, dynamic> json)
      : name = json['name'];
}