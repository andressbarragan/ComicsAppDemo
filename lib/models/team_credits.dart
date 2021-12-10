
class TeamCreditsDTO
{
  List<String> teams=[];

  static TeamCreditsDTO fromJson(List<dynamic> json)
  {
    var ret =TeamCreditsDTO();

    json.forEach((element) {
      var  aux = (element as Map<dynamic,dynamic>);
      ret.teams.add(aux["name"]);
      //Logs.Show(aux["name"]);
    });

    return ret;
  }

}