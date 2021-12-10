
import 'package:comicbook_app/core/controllers/characters_constroller.dart';
import 'package:comicbook_app/models/comic_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_grid/responsive_grid.dart';


class DetailsCard extends StatelessWidget
{
  final String url;


  const DetailsCard({Key? key, required this.url}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child:  Padding(
        padding: const EdgeInsets.all(15),
        child: getComicDetails(),
      ),

    );
  }

  FutureBuilder<ComicDetailsDTO> getComicDetails() =>
      FutureBuilder<ComicDetailsDTO>(
          future: CharactersController().getComicsDetails(url),
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return Container(

              );
            }

            final ComicDetailsDTO comics = snapshot.data ?? ComicDetailsDTO();

            return _buildComicCharacters(comics);

          });

  Widget _buildComicCharacters(ComicDetailsDTO comicsDetails) {
    return Container(
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: ResponsiveGridList(
                desiredItemWidth: 150,
                minSpacing: 10,
                children: comicsDetails.characters!.names.map((i) {
                  //Logs.Show(i);
                  return Text(i, style: const TextStyle(fontSize: 15),);
                }).toList()
                ,
              ),
            ),
            Expanded(
              flex: 1,
              child: ResponsiveGridList(
                desiredItemWidth: 150,
                minSpacing: 10,
                children: comicsDetails.teams!.teams.map((i) {
                  //Logs.Show(i);
                  return Text(i, style: const TextStyle(fontSize: 15),);
                }).toList()
                ,
              ),
            ),
            Expanded(
              flex: 1,
              child: ResponsiveGridList(
                desiredItemWidth: 150,
                minSpacing: 10,
                children: comicsDetails.locations!.locations.map((i) {
                  //Logs.Show(i);
                  return Text(i, style: const TextStyle(fontSize: 15),);
                }).toList()
                ,
              ),
            )
          ],
        )
    );
  }
}