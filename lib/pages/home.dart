import 'package:comicbook_app/components/grid_comics.dart';
import 'package:comicbook_app/components/list_comics.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:material_segmented_control/material_segmented_control.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomePageState();
}

class _HomePageState extends State<Home> {
  int? _currentSelection = 0;



  List<Widget> pages=[const GridComics(), const ListComics()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Comic Book'),
        ),
        body: Align(
          alignment: Alignment.topRight,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              MaterialSegmentedControl(
                children: _children,
                selectionIndex: _currentSelection,
                borderColor: Colors.grey,
                selectedColor: Colors.blueAccent,
                unselectedColor: Colors.white,
                borderRadius: 5.0,
                onSegmentChosen: (index) {
                  setState(() {
                    _currentSelection = index as int?;
                  });
                },
              ),
              const SizedBox(
                height: 8,
              ),
              Container(
                height: MediaQuery.of(context).size.height*0.80,
                width: double.infinity,
                child: pages[_currentSelection as int],
              )
            ],
          ),
        )
    );
  }





  final Map<int, Widget> _children = {
    0: const Text('Grid'),
    1: const Text('List')
  };


}