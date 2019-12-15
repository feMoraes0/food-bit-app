import 'package:flutter/material.dart';

class Account extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            'Profile',
            style: TextStyle(fontSize: 24.0),
            textAlign: TextAlign.center,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: CircleAvatar(
              backgroundColor: Colors.blueGrey,
              radius: 60.0,
              child: Icon(Icons.person_outline, size: 55.0, color: Colors.white,),
            ),
          ),
        ],
      ),
    );
  }
}
