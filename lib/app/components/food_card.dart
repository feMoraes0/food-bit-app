import 'package:flutter/material.dart';

class FoodCard extends StatelessWidget {

  final double width;
  final Color primaryColor;
  final String productUrl, productName, productPrice, productRate, productClients;


  FoodCard({
    @required this.width,
    @required this.primaryColor,
    @required this.productUrl,
    @required this.productName,
    @required this.productPrice,
    @required this.productRate,
    @required this.productClients,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
    width: width,
    color: Colors.white,
    padding: const EdgeInsets.all(10.0),
    margin: const EdgeInsets.symmetric(horizontal: 10.0),
    child: Column(
      children: <Widget>[
        Stack(
          children: <Widget>[
            Container(
              height: 140.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(productUrl),
                ),
              ),
            ),
            Container(
              alignment: Alignment.topRight,
              child: Container(
                padding: const EdgeInsets.all(4.0),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey[300],
                      blurRadius: 4.0,
                      offset: Offset(3.0, 3.0),
                    )
                  ],
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
                child: Icon(
                  Icons.favorite,
                  size: 17.0,
                  color: primaryColor,
                ),
              ),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 10.0,
            bottom: 4.0,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                productName,
                style: TextStyle(
                  fontSize: 14.0,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(4.0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey[300],
                        blurRadius: 4.0,
                        offset: Offset(3.0, 3.0),
                      )
                    ]),
                child: Icon(
                  Icons.near_me,
                  size: 17.0,
                  color: primaryColor,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 5.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                '$productRate \($productClients\)',
                style: TextStyle(
                  fontSize: 13.0,
                  color: Colors.grey[400],
                ),
              ),
              Text(
                '\$ $productPrice',
                style: TextStyle(
                  fontSize: 13.0,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
  }
}