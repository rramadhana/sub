import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '/model/product.dart';
import 'package:submissiondicoding/detail_screen.dart';

class detail2 extends StatefulWidget {

  Product product;

  detail2(this.product);

  @override
  _detail2State createState() => _detail2State();
}

class _detail2State extends State<detail2> {
  final ScrollController _controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
            vertical: 24.0,
            horizontal: 52.0
        ),
        child: SingleChildScrollView(
          controller: _controller,
          child: Center(
            child: Container(
              width: screenWidth <= 1200 ? 800 : 1200,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Card(
                      child: Padding(
                        padding: EdgeInsets.all(24.0),
                        child: Row(
                          //crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Expanded(
                                child: Image.network(widget.product.imageProducts)
                            ),
                            SizedBox(width: 18.0),
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        widget.product.price,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 32.0,
                                            fontFamily: 'Inder'
                                        ),
                                      ),
                                      FavoriteButton()
                                    ],
                                  ),
                                  SizedBox(height: 8.0),
                                  Text(
                                    widget.product.subTitle,
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        fontSize: 18.0,
                                        fontFamily: 'Inder'
                                    ),
                                  ),
                                  SizedBox(height: 28.0),
                                  Container(
                                    margin: EdgeInsets.only(
                                        top: 16.0
                                    ),
                                    color: Color(0xFFECF0EF),
                                    child: Row(
                                      children: <Widget>[
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left: 16.0,
                                              top: 6.0,
                                              bottom: 6.0
                                          ),
                                          child: Container(
                                            width: 64.0,
                                            height: 64.0,
                                            decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                image: DecorationImage(
                                                    image: NetworkImage(widget.product.imageSeller),
                                                    fit: BoxFit.fill
                                                )
                                            ),
                                          ),
                                        ),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: 16.0,
                                                top: 6.0,
                                                bottom: 6.0
                                            ),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: <Widget>[
                                                Text(
                                                  widget.product.storeName,
                                                  textAlign: TextAlign.left,
                                                  style: TextStyle(
                                                    fontSize: 14.0,
                                                  ),
                                                ),
                                                SizedBox(height: 4.0),
                                                Container(
                                                  padding: EdgeInsets.only(
                                                      top: 4.0,
                                                      left: 6.0,
                                                      right: 6.0,
                                                      bottom: 6.0
                                                  ),
                                                  color: Color(0xFFCECECE),
                                                  child: Text(
                                                    widget.product.city,
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(
                                                      fontSize: 10.0,
                                                      fontWeight: FontWeight.bold,
                                                    ),
                                                  ),
                                                )
                                              ],
                                            )
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        top: 28.0
                    ),
                    child: Card(
                      color: Color(0xFF626262),
                      child: Container(
                        margin: EdgeInsets.only(
                            top: 12.0,
                            bottom: 12.0
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(
                                  top: 32.0,
                                  left: 16.0
                              ),
                              child: Text(
                                "Deskripsi",
                                style: TextStyle(
                                    fontSize: 32.0,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                            Container(
                                margin: EdgeInsets.only(
                                    top: 16.0,
                                    bottom: 16.0
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(18.0),
                                  child: Text(
                                    widget.product.description,
                                    textAlign: TextAlign.justify,
                                    style: TextStyle(
                                      fontSize: 14.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                )
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
