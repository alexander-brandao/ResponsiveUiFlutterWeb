import 'package:flutter/material.dart';
import 'package:responsive_dashboard/util/my_tile.dart';

import '../constants.dart';

class MobileScaffold extends StatefulWidget {
  const MobileScaffold({Key? key}) : super(key: key);

  @override
  State<MobileScaffold> createState() => _MobileScaffoldState();
}

class _MobileScaffoldState extends State<MobileScaffold> {
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
              aspectRatio: 1,
              child: SizedBox(
                width: double.infinity,
                child: GridView.builder(
                    itemCount: 4,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2),
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
