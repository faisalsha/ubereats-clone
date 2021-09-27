import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:ubereats/json/home_page_json.dart';
import 'package:ubereats/theme/colors.dart';
import 'package:ubereats/theme/styles.dart';
import 'package:ubereats/widgets/custom_slider.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int activeMenu = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getBody(),
    );
  }

  Widget getBody() {
    return ListView(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                menu.length,
                (index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          activeMenu = index;
                        });
                      },
                      child: activeMenu == index
                          ? ElasticIn(
                              child: Container(
                                decoration: BoxDecoration(
                                  color: black,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      left: 15, right: 15, bottom: 8, top: 8),
                                  child: Row(
                                    children: [
                                      Text(
                                        menu[index],
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            )
                          : Container(
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Padding(
                                padding: EdgeInsets.only(
                                    left: 15, right: 15, bottom: 8, top: 8),
                                child: Row(
                                  children: [
                                    Text(
                                      menu[index],
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500),
                                    )
                                  ],
                                ),
                              ),
                            ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 15),
                  width: MediaQuery.of(context).size.width - 70,
                  decoration: BoxDecoration(
                    // color: Colors.red,
                    color: textFieldColor,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.pin_drop,
                              size: 25,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "NewYork",
                              style: customContent,
                            )
                          ],
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: EdgeInsets.all(5),
                        child: Container(
                          height: 35,
                          decoration: BoxDecoration(
                            color: white,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(left: 15, right: 15),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.watch_later,
                                  size: 25,
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  "Now",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  width: 2,
                                ),
                                Icon(Icons.keyboard_arrow_down)
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(child: Icon(Icons.filter_list_outlined))
              ],
            ),
            SizedBox(
              height: 15,
            ),
            CustomSliderWidget(
              items: [
                "assets/images/slide_1.jpg",
                "assets/images/slide_2.jpg",
                "assets/images/slide_3.jpg"
              ],
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(color: textFieldColor),
              child: Padding(
                padding: EdgeInsets.only(bottom: 10, top: 10),
                child: Container(
                  decoration: BoxDecoration(color: white),
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 15, top: 15),
                    child: Container(
                      margin: EdgeInsets.only(
                        left: 30,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(right: 18.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Icon(
                                  Icons.shopping_bag,
                                  color: Colors.red,
                                  size: 35,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "PickUp",
                                  style: customContent,
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Icon(
                                  Icons.local_grocery_store,
                                  color: Colors.blue,
                                  size: 35,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Groceries",
                                  style: customContent,
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Icon(
                                  Icons.event_seat_sharp,
                                  color: Colors.green,
                                  size: 35,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Essentials",
                                  style: customContent,
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Icon(
                                  Icons.free_breakfast,
                                  color: Colors.teal,
                                  size: 35,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Breakfast",
                                  style: customContent,
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 160,
                          child: Image.network(
                            firstMenu[0]['img'],
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned(
                          bottom: 15,
                          right: 15,
                          child: Icon(
                            firstMenu[0]["is_liked"]
                                ? Icons.favorite
                                : Icons.favorite_border,
                            color: firstMenu[0]["is_liked"]
                                ? Colors.red
                                : Colors.white,
                            size: 30,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      firstMenu[0]['name'],
                      style: TextStyle(fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        Text(
                          "Sponsored",
                          style: TextStyle(color: black, fontSize: 14),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          Icons.info,
                          color: Colors.grey,
                          size: 20,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      firstMenu[0]['description'],
                      style: TextStyle(fontSize: 14),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: textFieldColor,
                            borderRadius: BorderRadius.circular(3),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Icon(
                              Icons.hourglass_bottom,
                              color: primary,
                              size: 18,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: textFieldColor,
                            borderRadius: BorderRadius.circular(3),
                          ),
                          child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Text(
                                firstMenu[0]['time'],
                                style: TextStyle(fontSize: 14),
                              )),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: textFieldColor,
                            borderRadius: BorderRadius.circular(3),
                          ),
                          child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Text(
                                firstMenu[0]['delivery_fee'],
                                style: TextStyle(fontSize: 14),
                              )),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 10,
              decoration: BoxDecoration(color: textFieldColor),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(left: 15, right: 15, bottom: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [Text("Explore More", style: customTitle)],
              ),
            ),
            // SizedBox(
            //   height: 15,
            // ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                  children: List.generate(exploreMenu.length, (index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width - 30,
                            height: 160,
                            child: Image.network(
                              exploreMenu[index]['img'],
                              fit: BoxFit.cover,
                            ),
                          ),
                          Positioned(
                            bottom: 15,
                            right: 15,
                            child: Icon(
                              exploreMenu[index]["is_liked"]
                                  ? Icons.favorite
                                  : Icons.favorite_border,
                              color: exploreMenu[index]["is_liked"]
                                  ? Colors.red
                                  : Colors.white,
                              size: 30,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        exploreMenu[index]['name'],
                        style: TextStyle(fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: [
                          Text(
                            "Sponsored",
                            style: TextStyle(color: black, fontSize: 14),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(
                            Icons.info,
                            color: Colors.grey,
                            size: 20,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        exploreMenu[index]['description'],
                        style: TextStyle(fontSize: 14),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: textFieldColor,
                              borderRadius: BorderRadius.circular(3),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: Icon(
                                Icons.hourglass_bottom,
                                color: primary,
                                size: 18,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: textFieldColor,
                              borderRadius: BorderRadius.circular(3),
                            ),
                            child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Text(
                                  exploreMenu[index]['time'],
                                  style: TextStyle(fontSize: 14),
                                )),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: textFieldColor,
                              borderRadius: BorderRadius.circular(3),
                            ),
                            child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Row(
                                  children: [
                                    Text(
                                      exploreMenu[index]['rate_number'],
                                      style: TextStyle(fontSize: 14),
                                    ),
                                    SizedBox(
                                      width: 3,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: yellowStar,
                                      size: 17,
                                    ),
                                    Text(
                                      exploreMenu[index]['delivery_fee'],
                                      style: TextStyle(fontSize: 14),
                                    ),
                                  ],
                                )),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              })),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 10,
              decoration: BoxDecoration(color: textFieldColor),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(left: 15, right: 15, bottom: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [Text("Popular near you", style: customTitle)],
              ),
            ),
            // SizedBox(
            //   height: 15,
            // ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                  children: List.generate(popluarNearYou.length, (index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width - 30,
                            height: 160,
                            child: Image.network(
                              popluarNearYou[index]['img'],
                              fit: BoxFit.cover,
                            ),
                          ),
                          Positioned(
                            bottom: 15,
                            right: 15,
                            child: Icon(
                              popluarNearYou[index]["is_liked"]
                                  ? Icons.favorite
                                  : Icons.favorite_border,
                              color: popluarNearYou[index]["is_liked"]
                                  ? Colors.red
                                  : Colors.white,
                              size: 30,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        popluarNearYou[index]['name'],
                        style: TextStyle(fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: [
                          Text(
                            "Sponsored",
                            style: TextStyle(color: black, fontSize: 14),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(
                            Icons.info,
                            color: Colors.grey,
                            size: 20,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        popluarNearYou[index]['description'],
                        style: TextStyle(fontSize: 14),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: textFieldColor,
                              borderRadius: BorderRadius.circular(3),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: Icon(
                                Icons.hourglass_bottom,
                                color: primary,
                                size: 18,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: textFieldColor,
                              borderRadius: BorderRadius.circular(3),
                            ),
                            child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Text(
                                  popluarNearYou[index]['time'],
                                  style: TextStyle(fontSize: 14),
                                )),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: textFieldColor,
                              borderRadius: BorderRadius.circular(3),
                            ),
                            child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Row(
                                  children: [
                                    Text(
                                      popluarNearYou[index]['rate_number'],
                                      style: TextStyle(fontSize: 14),
                                    ),
                                    SizedBox(
                                      width: 3,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: yellowStar,
                                      size: 17,
                                    ),
                                    Text(
                                      popluarNearYou[index]['delivery_fee'],
                                      style: TextStyle(fontSize: 14),
                                    ),
                                  ],
                                )),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              })),
            )
          ],
        )
      ],
    );
  }
}
