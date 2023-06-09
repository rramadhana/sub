import 'package:flutter/material.dart';
import 'package:submissiondicoding/data/data.dart';
import 'package:submissiondicoding/model/product.dart';
import 'detail_screen.dart';
import 'menu/page/page_grid.dart';
import 'menu/page/page_list.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return Scaffold(
            appBar: AppBar(
              title: Text("Makelar 123"),
              backgroundColor: Colors.black,
            ),
            body: LayoutBuilder(
                builder:(BuildContext context, BoxConstraints constraints) {
                  if (constraints.maxWidth <= 600) {
                    return Pagelist();
                  } else if (constraints.maxWidth <= 1200) {
                    return Pagegrid(2);
                  } else {
                    return Pagegrid(4);
                  }
                }
            ),
          );
        }
    );
  }
}