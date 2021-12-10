import 'package:comicbook_app/core/controllers/comics_controller.dart';
import 'package:comicbook_app/models/comic.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_grid_list/responsive_grid_list.dart';

import 'list_card.dart';

class ListComics extends StatelessWidget {

  const ListComics({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child:  Padding(
        padding: const EdgeInsets.all(15),
        child: getCharacters(),
      ),

    );
  }

  FutureBuilder<List<ComicDTO>> getCharacters() =>
      FutureBuilder<List<ComicDTO>>(
          future: ComicsController().getComics(),
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return Container(
                height: double.infinity,
                child: const Center(
                  child: CircularProgressIndicator(),
                ),
              );
            }

            final List<ComicDTO> comics = snapshot.data ?? [];
            final bool characterCounter = comics.isNotEmpty;
            if (characterCounter) {
              return _buildMyCharacters(comics);
            } else {
              return Container();
            }
          });

  Widget _buildMyCharacters(List<ComicDTO> comics) {
    return ResponsiveGridList(
      minItemWidth: 100,
        maxItemsPerRow:1,
      children: comics.map((i) {
        //Logs.Show(i.name);
        return ListCard(comic:i);
      }).toList(),
    );
  }

}