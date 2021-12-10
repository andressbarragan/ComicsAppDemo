import 'package:comicbook_app/constants/globals.dart';
import 'package:comicbook_app/models/comic.dart';
import 'package:comicbook_app/pages/details.dart';
import 'package:flutter/material.dart';

class GridCard extends StatelessWidget {
  final ComicDTO? comic;
  const GridCard({Key? key, @required this.comic}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: (){
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>
                  Details(url: comic!.detailURL+Globals.apiVineDetailsComics, nameComic: comic!.getName(), urlBigImage: comic!.image.imageURL,)));
        },
        child: Container(

        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 3,
                  blurRadius: 2,
                  offset: const Offset(0, 2))
            ]),
        child: Column(children: [
          Image.network(comic!.image.imageURL),
          Text(comic!.getName(),style: const TextStyle(fontSize: 14),textAlign: TextAlign.center,),
          Text(comic!.dateAdded,style: const TextStyle(fontSize: 10),textAlign: TextAlign.center)
        ])));
  }


}