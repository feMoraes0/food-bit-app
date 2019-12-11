import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    Size size = MediaQuery.of(context).size;

    Widget card({double width, Color primaryColor}) {
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
                      image: AssetImage('images/plate-001.png'),
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
                    'Tandoori Chicken',
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
                      color: theme.primaryColor,
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
                    '4.9 \(200\)',
                    style: TextStyle(
                      fontSize: 13.0,
                      color: Colors.grey[400],
                    ),
                  ),
                  Text(
                    '\$ 96.00',
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

    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(
                top: 20.0,
                left: 20.0,
                right: 20.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'What would you like to eat?',
                    style: TextStyle(fontSize: 21.0),
                  ),
                  Icon(Icons.notifications_none, size: 28.0)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25.0, left: 20.0, right: 20.0),
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
            Container(
              height: 105,
              margin: const EdgeInsets.only(top: 20.0, bottom: 25.0),
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.only(
                  left: 20.0,
                ),
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.only(right: 35.0),
                    child: Column(
                      children: <Widget>[
                        Container(
                          width: 70,
                          height: 70,
                          margin: const EdgeInsets.only(bottom: 10.0),
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5.0)),
                              image: DecorationImage(
                                  image: AssetImage('images/Icon-001.png')),
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 10.0,
                                  color: Colors.grey[300],
                                  offset: Offset(6.0, 6.0),
                                )
                              ]),
                        ),
                        Text(
                          'Proteins',
                          style: TextStyle(fontSize: 17.0),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 35.0),
                    child: Column(
                      children: <Widget>[
                        Container(
                          width: 70,
                          height: 70,
                          margin: const EdgeInsets.only(bottom: 10.0),
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5.0)),
                              image: DecorationImage(
                                  image: AssetImage('images/Icon-002.png')),
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 10.0,
                                  color: Colors.grey[300],
                                  offset: Offset(6.0, 6.0),
                                )
                              ]),
                        ),
                        Text(
                          'Burger',
                          style: TextStyle(fontSize: 17.0),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 35.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          width: 70,
                          height: 70,
                          margin: const EdgeInsets.only(bottom: 10.0),
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5.0)),
                              image: DecorationImage(
                                  image: AssetImage('images/Icon-003.png')),
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 10.0,
                                  color: Colors.grey[300],
                                  offset: Offset(6.0, 6.0),
                                )
                              ]),
                        ),
                        Text(
                          'Fastfood',
                          style: TextStyle(fontSize: 17.0),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 35.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          width: 70,
                          height: 70,
                          margin: const EdgeInsets.only(bottom: 10.0),
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5.0)),
                              image: DecorationImage(
                                  image: AssetImage('images/Icon-004.png')),
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 10.0,
                                  color: Colors.grey[300],
                                  offset: Offset(6.0, 6.0),
                                )
                              ]),
                        ),
                        Text(
                          'Salads',
                          style: TextStyle(fontSize: 17.0),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, bottom: 10.0),
              child: Text(
                'Popular Food',
                style: TextStyle(fontSize: 21.0),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                children: <Widget>[
                  card(
                    width: size.width / 2 - 30.0,
                    primaryColor: theme.primaryColor,
                  ),
                  card(
                    width: size.width / 2 - 30.0,
                    primaryColor: theme.primaryColor,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, bottom: 10.0, top: 35.0),
              child: Text(
                'Best food',
                style: TextStyle(fontSize: 21.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
