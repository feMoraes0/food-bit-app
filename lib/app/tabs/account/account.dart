import 'package:flutter/material.dart';
import 'package:food_bit_app/app/components/food_card.dart';

class Account extends StatefulWidget {
  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> with TickerProviderStateMixin {
  TabController _tabController;
  bool switchValue = true;
  final List<Map<String, String>> favoriteFoods = [
    {
      'name': 'Tandoori Chicken',
      'price': '96.00',
      'rate': '4.9',
      'clients': '200',
      'image': 'images/plate-001.png'
    },
    {
      'name': 'Salmon',
      'price': '40.50',
      'rate': '4.5',
      'clients': '168',
      'image': 'images/plate-002.png'
    },
    {
      'name': 'Rice and meat',
      'price': '130.00',
      'rate': '4.8',
      'clients': '150',
      'image': 'images/plate-003.png'
    }
  ];

  @override
  void initState() {
    this._tabController = TabController(
      length: 2,
      initialIndex: 0,
      vsync: this,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            'Profile',
            style: TextStyle(fontSize: 18.0),
            textAlign: TextAlign.center,
          ),
          Container(
            margin: const EdgeInsets.only(
              top: 30.0,
              bottom: 15.0,
            ),
            child: CircleAvatar(
              backgroundColor: Colors.blueGrey,
              radius: 35.0,
              child: Icon(
                Icons.person,
                size: 30.0,
                color: Colors.white,
              ),
            ),
          ),
          Text(
            'Fernando Moraes',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 22.0,
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
                    size: 16.0,
                    color: Colors.black54,
                  ),
                ),
                Text(
                  'Warsaw, Poland',
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.black54,
                  ),
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
          Container(
            color: Colors.white,
            child: TabBar(
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
          ),
          Expanded(
              child: TabBarView(
            controller: this._tabController,
            children: <Widget>[
              Container(
                child: GridView.count(
                  crossAxisCount: 2,
                  childAspectRatio: ((size.width / 2) / 230),
                  children: this.favoriteFoods.map((product) {
                    return Container(
                      margin: const EdgeInsets.only(top: 10.0),
                      child: FoodCard(
                        width: size.width,
                        primaryColor: theme.primaryColor,
                        productName: product['name'],
                        productPrice: product['price'],
                        productUrl: product['image'],
                        productClients: product['clients'],
                        productRate: product['rate'],
                      ),
                    );
                  }).toList(),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 10.0),
                padding: const EdgeInsets.symmetric(
                  vertical: 15.0,
                  horizontal: 20.0,
                ),
                child: Column(
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 15.0,
                      ),
                      decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                        color: Colors.grey[300],
                      ))),
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.location_on,
                            size: 25.0,
                            color: theme.primaryColor,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 15.0,
                            ),
                            child: Text(
                              'Location',
                              style: TextStyle(fontSize: 18.0),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 10.0,
                      ),
                      decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                        color: Colors.grey[300],
                      ))),
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.local_shipping,
                            size: 25.0,
                            color: theme.primaryColor,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 15.0,
                            ),
                            child: Text(
                              'Shipping',
                              style: TextStyle(fontSize: 18.0),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 10.0,
                      ),
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: Colors.grey[300],
                          ),
                        ),
                      ),
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.account_balance_wallet,
                            size: 25.0,
                            color: theme.primaryColor,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 15.0,
                            ),
                            child: Text(
                              'Payment',
                              style: TextStyle(fontSize: 18.0),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: Colors.grey[300],
                          ),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'Location Tracking',
                            style: TextStyle(fontSize: 18.0),
                          ),
                          Switch(
                            onChanged: (bool value) {
                              setState(() {
                                this.switchValue = value;
                              });
                            },
                            value: this.switchValue,
                            activeColor: theme.primaryColor,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 65.0),
                      padding: const EdgeInsets.symmetric(
                        vertical: 10.0,
                      ),
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: Colors.grey[300],
                          ),
                        ),
                      ),
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.power_settings_new,
                            size: 25.0,
                            color: theme.primaryColor,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 15.0,
                            ),
                            child: Text(
                              'Logout',
                              style: TextStyle(fontSize: 18.0),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ))
        ],
      ),
    );
  }
}
