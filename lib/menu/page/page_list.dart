import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:submissiondicoding/data/data.dart';
import 'package:submissiondicoding/model/product.dart';
import 'package:submissiondicoding/detail_screen.dart';

class Pagelist extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        final Product product = listOfProducts[index];
        return InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return DetailScreen(product);
            }));
          },
          child: Padding(
            padding: EdgeInsets.symmetric(
                vertical: 4.0,
                horizontal: 8.0
            ),
            child: Card(
                color: const Color(0xFF626262),
                child: Padding (
                  padding: EdgeInsets.all(8.0),
                  child: Row (
                    children: <Widget>[
                      Expanded(
                          flex: 2,
                          child: Image(
                              image: NetworkImage(product.imageProducts)
                          )
                      ),
                      Expanded(
                          flex: 4,
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                    product.title,
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.bold

                                    )
                                ),
                                Padding(
                                    padding: EdgeInsets.only(
                                        top: 4.0
                                    )),
                                Text(
                                  product.storeName,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 8.0,
                                      fontFamily: 'Poppins'
                                  ),
                                ),
                                SizedBox(height: 28.0),
                                Text(
                                  product.price,
                                  style: TextStyle(
                                      color: const Color(0xFF020202),
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.bold
                                  ),
                                )
                              ],
                            ),
                          )
                      )
                    ],
                  ),
                )
            ),
          ),
        );
      },
      itemCount: listOfProducts.length,
    );
  }
}
