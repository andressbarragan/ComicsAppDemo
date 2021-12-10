
class LocationCreditsDTO
{
  List<String> locations=[];

  static LocationCreditsDTO fromJson(List<dynamic> json)
  {
    var ret =LocationCreditsDTO();

    json.forEach((element) {
      var  aux = (element as Map<dynamic,dynamic>);
      ret.locations.add(aux["name"]);
      //Logs.Show(aux["name"]);
    });

    return ret;
  }

}