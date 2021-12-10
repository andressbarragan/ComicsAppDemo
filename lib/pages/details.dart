

import 'package:comicbook_app/components/details_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class Details extends StatelessWidget {

  final String url;
  final String nameComic;
  final String urlBigImage;

  const Details({Key? key, required this.url, required this.nameComic, required this.urlBigImage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(nameComic),
        ),
        body: Align(
          alignment: Alignment.topRight,
          child: Row(
            children: [
              Expanded(
                flex: 6,
                child: DetailsCard(url: url)
              ),
              Expanded(
                flex: 4,
                child: Container(
                  child: Image.network(urlBigImage),
                ),
              ),
            ],
          ),
        )
    );
  }



  }





