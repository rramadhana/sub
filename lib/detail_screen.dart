import 'package:flutter/material.dart';
import '/model/product.dart';
import 'menu/detail/detail1.dart';
import 'menu/detail/detail2.dart';

class DetailScreen extends StatelessWidget {
  final Product product;

  DetailScreen(this.product);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Makelar 123'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.popUntil(context, ModalRoute.withName('/'));
          },
        ),
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth > 800) {
            return detail2(product);
          } else {
            return detail1(product);
          }
        },
      ),
    );
  }
}

class FavoriteButton extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _FavoriteButton();
}

class _FavoriteButton extends State<FavoriteButton> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        isFavorite ? Icons.favorite : Icons.favorite_border,
        color: Colors.red,
      ),
      onPressed: () {
        setState(() {
          isFavorite = !isFavorite;
        });
      },
    );
  }
}
