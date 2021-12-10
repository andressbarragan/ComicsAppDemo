
class CharacterCredits
{
  List<String> names=[];

  static CharacterCredits fromJson(List<dynamic> json)
  {
      var ret =CharacterCredits();

      json.forEach((element) {
        var  aux = (element as Map<dynamic,dynamic>);
        ret.names.add(aux["name"]);
        //Logs.Show(aux["name"]);
      });

      return ret;
  }

}