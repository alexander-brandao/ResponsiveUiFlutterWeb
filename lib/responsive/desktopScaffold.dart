import 'package:flutter/material.dart';

import '../constants.dart';
import '../util/my_tile.dart';

class DesktopScaffold extends StatefulWidget {
  const DesktopScaffold({Key? key}) : super(key: key);

  @override
  State<DesktopScaffold> createState() => _DesktopScaffoldState();
}

class _DesktopScaffoldState extends State<DesktopScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:myDefaultBackgroung,
      appBar: myAppBar,
      body: Row(
        children: [
          myDrawer,

          Expanded(
            flex: 2,
              child: Column(
                children: [
              // 4 contatos
              AspectRatio(
                aspectRatio: 4,
                child: SizedBox(
                  width: double.infinity,
                  child: GridView.builder(
                      itemCount: 4,
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 4),
                      itemBuilder: (context, index){
                        return Padding(
                          padding: const EdgeInsets.all(8),
                          child: Container(
                            color: Colors.blue,
                          ),
                        );
                      }),
                ),
              ),

              // lista de projetos
              Expanded(
                  child: ListView.builder(
                      itemCount: 4,
                      itemBuilder: (context, index){
                        return const MyTile();
                      }
                  )
              ),
            ],
          )
          ),
          //noticias
          Expanded(
              child: Column(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        color: Colors.pink,
                      ),
                    ),
                  )
                ],
              )
          ),

        ],
      ),
    );
  }
}
