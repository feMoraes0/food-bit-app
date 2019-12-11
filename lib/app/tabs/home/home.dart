import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'What would you like to eat?',
                  style: TextStyle(fontSize: 21.0),
                ),
                Icon(Icons.notifications_none, size: 28.0)
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25.0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(
                    Icons.search,
                    size: 28.0,
                    color: theme.primaryColor,
                  ),
                  suffixIcon: Icon(
                    Icons.filter_list,
                    size: 28.0,
                    color: theme.primaryColor,
                  ),
                  hintText: 'Find a food or Restaurant',
                  hintStyle: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 19.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
