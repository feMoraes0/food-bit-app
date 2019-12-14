import 'package:flutter/material.dart';
import 'package:food_bit_app/app/tabs/home/details/body_details.dart';

Widget iconBadge({@required IconData icon, @required Color iconColor}) {
  return Container(
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
      icon,
      size: 20.0,
      color: iconColor,
    ),
  );
}

class Details extends StatefulWidget {
  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> with TickerProviderStateMixin {
  int screenTab = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final Map screenArguments = ModalRoute.of(context).settings.arguments;
    Map product = screenArguments['product'];
    int index = screenArguments['index'];

    return Scaffold(
      body: Stack(
        children: <Widget>[
          Hero(
            tag: 'detail_food$index',
            child: Container(
              alignment: Alignment.topCenter,
              width: size.width,
              height: size.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(product['image']),
                ),
              ),
            ),
          ),
          BodyDetails(),
          // Container(
          //   width: size.width - 100.0,
          //   margin: EdgeInsets.only(
          //     left: 50.0,
          //     right: 50.0,
          //     top: size.width * 0.70,
          //   ),
          //   child: Column(
          //     crossAxisAlignment: CrossAxisAlignment.end,
          //     children: <Widget>[
          //       Container(
          //         margin: const EdgeInsets.only(right: 12.0, bottom: 10.0),
          //         child: iconBadge(
          //             icon: Icons.favorite, iconColor: theme.primaryColor),
          //       ),
          //       Container(
          //         width: size.width - 100.0,
          //         padding: const EdgeInsets.all(10.0),
          //         decoration: BoxDecoration(
          //           color: Colors.white,
          //           borderRadius: BorderRadius.circular(20.0),
          //         ),
          //         child: Column(
          //           crossAxisAlignment: CrossAxisAlignment.stretch,
          //           children: <Widget>[
          //             Row(
          //               mainAxisAlignment: MainAxisAlignment.end,
          //               children: <Widget>[
          //                 iconBadge(
          //                   icon: Icons.near_me,
          //                   iconColor: theme.primaryColor,
          //                 ),
          //               ],
          //             ),
          //             Container(
          //               margin: const EdgeInsets.only(
          //                 top: 15.0,
          //               ),
          //               child: Row(
          //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //                 children: <Widget>[
          //                   Text(
          //                     product['name'],
          //                     style: TextStyle(fontSize: 18.0),
          //                   ),
          //                   Text(
          //                     '\$ ${product['price']}',
          //                     style: TextStyle(fontSize: 18.0),
          //                   ),
          //                 ],
          //               ),
          //             ),
          //             Row(
          //               children: <Widget>[
          //                 Text(
          //                   'by',
          //                   style: TextStyle(
          //                     color: Colors.grey[500],
          //                   ),
          //                 ),
          //                 Text(' Restaurant'),
          //               ],
          //             ),
          //             Container(
          //               margin: const EdgeInsets.symmetric(
          //                 vertical: 15.0,
          //               ),
          //               child: Row(
          //                 mainAxisAlignment: MainAxisAlignment.center,
          //                 children: <Widget>[
          //                   GestureDetector(
          //                     onTap: () {},
          //                     child: Icon(
          //                       Icons.remove,
          //                       size: 30.0,
          //                     ),
          //                   ),
          //                   Container(
          //                     padding: const EdgeInsets.symmetric(
          //                       horizontal: 25.0,
          //                       vertical: 8.0,
          //                     ),
          //                     margin: const EdgeInsets.symmetric(
          //                       horizontal: 20.0,
          //                     ),
          //                     decoration: BoxDecoration(
          //                       color: theme.primaryColor,
          //                       borderRadius: BorderRadius.circular(5.0),
          //                     ),
          //                     child: Text(
          //                       'Add To Bad',
          //                       style: TextStyle(
          //                         fontSize: 18.0,
          //                         color: Colors.white,
          //                       ),
          //                     ),
          //                   ),
          //                   GestureDetector(
          //                     child: Icon(
          //                       Icons.add,
          //                       size: 30.0,
          //                       color: theme.primaryColor,
          //                     ),
          //                   ),
          //                 ],
          //               ),
          //             ),
          //             Row(
          //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //               children: <Widget>[
          //                 GestureDetector(
          //                   onTap: () {
          //                     setState(() {
          //                       this.screenTab = 0;
          //                     });
          //                   },
          //                   child: Container(
          //                     padding: const EdgeInsets.only(
          //                       bottom: 3.0,
          //                     ),
          //                     decoration: BoxDecoration(
          //                         border: Border(
          //                       bottom: BorderSide(
          //                         color: (screenTab == 0)
          //                             ? theme.primaryColor
          //                             : Colors.transparent,
          //                         width: 2.0,
          //                       ),
          //                     )),
          //                     child: Text(
          //                       'Detailes'.toUpperCase(),
          //                       style: TextStyle(
          //                         fontSize: 18.0,
          //                         color: theme.primaryColor,
          //                       ),
          //                     ),
          //                   ),
          //                 ),
          //                 GestureDetector(
          //                   onTap: () {
          //                     setState(() {
          //                       this.screenTab = 1;
          //                     });
          //                   },
          //                   child: Container(
          //                     padding: const EdgeInsets.only(
          //                       bottom: 3.0,
          //                       right: 10.0,
          //                     ),
          //                     decoration: BoxDecoration(
          //                       border: Border(
          //                         bottom: BorderSide(
          //                           color: (screenTab == 1)
          //                               ? theme.primaryColor
          //                               : Colors.transparent,
          //                           width: 2.0,
          //                         ),
          //                       ),
          //                     ),
          //                     child: Text(
          //                       'Review',
          //                       style: TextStyle(
          //                         fontSize: 18.0,
          //                         color: theme.primaryColor,
          //                       ),
          //                     ),
          //                   ),
          //                 ),
          //               ],
          //             ),
          //             Container(
          //               padding: const EdgeInsets.fromLTRB(5.0, 8.0, 5.0, 5.0),
          //               child: Text(
          //                   'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ut enim leo. In sagittis velit nibh. Morbi sollicitudin lorem vitae nisi iaculis, sit amet suscipit orci mollis. Ut dictum lectus eget diam vestibulum, at eleifend felis mattis. Sed molestie congue magna at venenatis. In mollis felis ut consectetur consequat.'),
          //             ),
          //           ],
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
        ],
      ),
    );
  }
}
