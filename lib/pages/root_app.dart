import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ubereats/pages/home_page.dart';
import 'package:ubereats/theme/colors.dart';

class RootApp extends StatefulWidget {
  @override
  _RootAppState createState() => _RootAppState();
}

class _RootAppState extends State<RootApp> {
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getBody(),
      bottomNavigationBar: getFooter(),
    );
  }

  Widget getBody() {
    List<Widget> pages = [
      HomePage(),
      Center(
        child: Text(
          "Search Page",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: black),
        ),
      ),
      Center(
        child: Text(
          "Grocery Page",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: black),
        ),
      ),
      Center(
        child: Text(
          "Orders Page",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: black),
        ),
      ),
      Center(
        child: Text(
          "Account Page",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: black),
        ),
      )
    ];
    return IndexedStack(
      index: pageIndex,
      children: pages,
    );
  }

  Widget getFooter() {
    List bottomItems = [
      Icons.home,
      Icons.search,
      Icons.store,
      Icons.online_prediction_rounded,
      Icons.account_balance
    ];
    List textItems = ["Home", "Search", "Grocery", "Orders", "Account"];
    return Container(
      width: double.infinity,
      height: 70,
      decoration: BoxDecoration(
          color: white,
          border: Border(
              top: BorderSide(width: 2, color: black.withOpacity(0.06)))),
      child: Padding(
        padding:
            const EdgeInsets.only(left: 20, right: 20, bottom: 20, top: 10),
        child: Row(
          // crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(textItems.length, (index) {
            return InkWell(
                onTap: () {
                  selectedTab(index);
                },
                child: Column(
                  children: [
                    Icon(
                      bottomItems[index],
                      size: 20,
                      color: pageIndex == index ? black : Colors.grey,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      textItems[index],
                      style: TextStyle(
                          fontSize: 10,
                          color: pageIndex == index
                              ? black
                              : black.withOpacity(0.5)),
                    )
                  ],
                ));
          }),
        ),
      ),
    );
  }

  selectedTab(index) {
    setState(() {
      pageIndex = index;
    });
  }
}
