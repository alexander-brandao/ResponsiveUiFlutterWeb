import 'package:flutter/material.dart';

import '../constants.dart';
import '../util/my_tile.dart';

class TabletScaffold extends StatefulWidget {
  const TabletScaffold({Key? key}) : super(key: key);

  @override
  State<TabletScaffold> createState() => _TabletScaffoldState();
}

class _TabletScaffoldState extends State<TabletScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:myDefaultBackgroung,
      appBar: myAppBar,
      drawer: myDrawer,
      body: Column(
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
      ),
    );
  }
}
