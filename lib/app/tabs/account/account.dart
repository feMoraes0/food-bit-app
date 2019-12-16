import 'package:flutter/material.dart';

class Account extends StatefulWidget {
  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> with TickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    this._tabController =
        TabController(length: 2, initialIndex: 0, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
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
          Container(
            margin: const EdgeInsets.only(
              top: 20.0,
              bottom: 15.0,
            ),
            child: CircleAvatar(
              backgroundColor: Colors.blueGrey,
              radius: 46.0,
              child: Icon(
                Icons.person,
                size: 55.0,
                color: Colors.white,
              ),
            ),
          ),
          Text(
            'Fernando Moraes',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 25.0,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5.0),
                  child: Icon(
                    Icons.location_on,
                    size: 20.0,
                    color: Colors.black54,
                  ),
                ),
                Text(
                  'Warsaw, Poland',
                  style: TextStyle(fontSize: 16.0, color: Colors.black54,),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 25.0,
              horizontal: 5.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Text(
                      '250K',
                      style: TextStyle(
                        fontSize: 18.0,
                        color: theme.primaryColor,
                      ),
                    ),
                    Text(
                      'Follower',
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.grey[500],
                      ),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Text(
                      '500',
                      style: TextStyle(
                        fontSize: 18.0,
                        color: theme.primaryColor,
                      ),
                    ),
                    Text(
                      'Following',
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.grey[500],
                      ),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Text(
                      '540',
                      style: TextStyle(
                        fontSize: 18.0,
                        color: theme.primaryColor,
                      ),
                    ),
                    Text(
                      'Taste Master',
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.grey[500],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          TabBar(
            controller: this._tabController,
            indicatorColor: theme.primaryColor,
            indicatorSize: TabBarIndicatorSize.label,
            labelColor: theme.primaryColor,
            labelStyle: TextStyle(fontSize: 20.0),
            unselectedLabelColor: Colors.black,
            tabs: <Widget>[
              Tab(text: 'Your Favorite'),
              Tab(text: 'Account Setting'),
            ],
          ),
          Expanded(
              child: TabBarView(
            controller: this._tabController,
            children: <Widget>[
              Container(
                color: Colors.redAccent,
              ),
              Container(
                color: Colors.blue,
              ),
            ],
          ))
        ],
      ),
    );
  }
}
