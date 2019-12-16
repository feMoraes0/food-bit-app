import 'package:flutter/material.dart';
import 'package:food_bit_app/app/components/custom_header.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> with TickerProviderStateMixin {
  TabController _tabController;
  final List<Map<String, String>> foods = [
    {
      'name': 'Rice and meat',
      'price': '130.00',
      'rate': '4.8',
      'clients': '150',
      'image': 'images/plate-003.png'
    },
    {
      'name': 'Vegan food',
      'price': '400.00',
      'rate': '4.2',
      'clients': '150',
      'image': 'images/plate-007.png'
    },
  ];

  @override
  void initState() {
    this._tabController = TabController(
      initialIndex: 0,
      length: 3,
      vsync: this,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    return SafeArea(
      child: Column(
        children: <Widget>[
          CustomHeader(
            title: 'Cart Food',
            quantity: this.foods.length,
            internalScreen: false,
          ),
          Container(
            margin: const EdgeInsets.only(top: 10.0,),
            child: TabBar(
              controller: this._tabController,
              indicatorColor: theme.primaryColor,
              indicatorSize: TabBarIndicatorSize.label,
              labelColor: Colors.black87,
              unselectedLabelColor: Colors.black87,
              tabs: <Widget>[
                Tab(text: 'Add Food',),
                Tab(text: 'Tracking Order',),
                Tab(text: 'Done Order',),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: this._tabController,
              children: <Widget>[
                Container(),
                Container(),
                Container(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
