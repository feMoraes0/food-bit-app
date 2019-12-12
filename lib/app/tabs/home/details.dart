import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  int screenTab = 0;

  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    ThemeData theme = Theme.of(context);

    return Scaffold(
      body: Stack(
        children: <Widget>[
          Hero(
            tag: 'detail_food0',
            child: Container(
              alignment: Alignment.topCenter,
              width: size.width,
              height: size.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/plate-001.png'),
                ),
              ),
            ),
          ),
          Container(
            alignment: Alignment.topCenter,
            height: 100.0,
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: SafeArea(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.arrow_back_ios, size: 32.0),
                  ),
                  Container(
                    child: Stack(
                      children: <Widget>[
                        Icon(Icons.card_travel, size: 34.0),
                        Container(
                          height: 21.0,
                          width: 21.0,
                          alignment: Alignment.bottomRight,
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
                              '0',
                              style: TextStyle(
                                fontSize: 15.0,
                                color: theme.primaryColor,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          SingleChildScrollView(
            child: Container(
              width: size.width - 100.0,
              margin: EdgeInsets.only(
                left: 50.0,
                right: 50.0,
                top: size.width * 0.70,
              ),
              // color: Colors.red,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.all(4.0),
                    margin: const EdgeInsets.only(right: 12.0, bottom: 10.0),
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 4.0,
                          offset: Offset(3.0, 3.0),
                        )
                      ],
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    child: Icon(
                      Icons.favorite,
                      size: 20.0,
                      color: theme.primaryColor,
                    ),
                  ),
                  Container(
                    width: size.width - 100.0,
                    padding: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Container(
                              padding: const EdgeInsets.all(4.0),
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black12,
                                    blurRadius: 4.0,
                                    offset: Offset(3.0, 3.0),
                                  )
                                ],
                                shape: BoxShape.circle,
                                color: Colors.white,
                              ),
                              child: Icon(
                                Icons.near_me,
                                size: 20.0,
                                color: theme.primaryColor,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                            top: 15.0,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                'Grilled salmon',
                                style: TextStyle(fontSize: 18.0),
                              ),
                              Text(
                                '\$ 96.00',
                                style: TextStyle(fontSize: 18.0),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              'by',
                              style: TextStyle(
                                color: Colors.grey[500],
                              ),
                            ),
                            Text(' Restaurant'),
                          ],
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(
                            vertical: 15.0,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(
                                Icons.remove,
                                size: 30.0,
                              ),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 25.0,
                                  vertical: 8.0,
                                ),
                                margin: const EdgeInsets.symmetric(
                                  horizontal: 20.0,
                                ),
                                decoration: BoxDecoration(
                                  color: theme.primaryColor,
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                                child: Text(
                                  'Add To Bad',
                                  style: TextStyle(
                                    fontSize: 18.0,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Icon(
                                Icons.add,
                                size: 30.0,
                                color: theme.primaryColor,
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  this.screenTab = 0;
                                });
                              },
                              child: Container(
                                padding: const EdgeInsets.only(
                                  bottom: 3.0,
                                ),
                                decoration: BoxDecoration(
                                    border: Border(
                                  bottom: BorderSide(
                                    color: (screenTab == 0)
                                        ? theme.primaryColor
                                        : Colors.transparent,
                                    width: 2.0,
                                  ),
                                )),
                                child: Text(
                                  'Detailes'.toUpperCase(),
                                  style: TextStyle(
                                    fontSize: 18.0,
                                    color: theme.primaryColor,
                                  ),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  this.screenTab = 1;
                                });
                              },
                              child: Container(
                                padding: const EdgeInsets.only(
                                  bottom: 3.0,
                                  right: 10.0,
                                ),
                                decoration: BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                      color: (screenTab == 1)
                                          ? theme.primaryColor
                                          : Colors.transparent,
                                      width: 2.0,
                                    ),
                                  ),
                                ),
                                child: Text(
                                  'Review',
                                  style: TextStyle(
                                    fontSize: 18.0,
                                    color: theme.primaryColor,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
