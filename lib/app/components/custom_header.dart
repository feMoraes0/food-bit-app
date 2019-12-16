import 'package:flutter/material.dart';

class CustomHeader extends StatelessWidget {
  final int quantity;
  final String title;

  CustomHeader({
    @required this.quantity,
    @required this.title,
  });

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            margin: const EdgeInsets.only(left: 10.0),
            child: Icon(Icons.arrow_back_ios, size: 32.0),
          ),
        ),
        Text(title, style: TextStyle(fontSize: 24.0),),
        Container(
          margin: const EdgeInsets.only(right: 10.0),
          child: Stack(
            children: <Widget>[
              Icon(Icons.card_travel, size: 34.0),
              Positioned(
                bottom: 0,
                right: 0,
                child: Container(
                  height: 21.0,
                  width: 21.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 7.0,
                        offset: Offset(-2.0, 2.0),
                      )
                    ],
                  ),
                  child: Center(
                    child: Text(
                      '$quantity',
                      style: TextStyle(
                        fontSize: 15.0,
                        color: theme.primaryColor,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
