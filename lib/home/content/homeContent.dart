import 'package:dosis_literaria/home/components/bottom/comments.dart';
import 'package:dosis_literaria/home/components/drawer/drawerstate.dart';
import 'package:dosis_literaria/home/content/snippet_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_group_sliver/flutter_group_sliver.dart';
import '../components/header/datoslibro_widget.dart';
import 'package:flutter/rendering.dart';

import '../home.dart';

class Content extends StatefulWidget {
  final CustomDrawer customDrawer;
  Content({key, this.customDrawer}) : super(key: key);

  @override
  ContentState createState() => new ContentState();
}

class ContentState extends State<Content> {
  CustomDrawer _customDrawer;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      drawer: _customDrawer,
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: size.height / 1.6,
            //floating: true,
            stretch: true,
            //pinned: true,
            backgroundColor: Colors.white,
            onStretchTrigger: () {
              return;
            },
            flexibleSpace: FlexibleSpaceBar(
              title: Text(''),
              stretchModes: [
                StretchMode.zoomBackground,
                //StretchMode.blurBackground, //nose cual se ve mejor
                StretchMode.fadeTitle
              ],
              background: Image.network(
                auxbook.cover,
                fit: BoxFit.cover,
              ),
            ),
            actions: <Widget>[
              Align(
                  alignment:
                      Alignment(-size.width, 0), //todo poner a la izquieda
                  child: IconButton(
                    iconSize: 30,
                    icon: const Icon(Icons.menu_book),
                    tooltip: 'Add new entry',
                    onPressed: () {
                      CustomDrawer.of(context).toggle();
                    },
                  )),
            ],
          ),
          SliverGroupBuilder(
            margin: EdgeInsets.all(0),
            decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.all(Radius.circular(-2)),
                border: Border.all(color: Color.fromRGBO(238, 237, 238, 1))),
            child: SliverList(
              delegate: new SliverChildListDelegate(
                [
                  Container(
                    color: Colors.transparent,
                    padding: const EdgeInsets.all(5.0),
                    child: Card(
                      color: Colors.transparent,
                      child: DatosLibroWidget(),
                    ),
                  ),
                  Container(
                    color: Colors.transparent,
                    padding: EdgeInsets.all(0.0),
                    child: Card(
                      child: SnippetWidget(), //no cambia con el tamaño
                    ),
                  ),
                  SizedBox(height: 05),
                  Card(
                      //child: Comments(),
                      ),
                  SizedBox(height: 50),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
