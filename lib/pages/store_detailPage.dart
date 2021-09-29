import 'package:flutter/material.dart';
import 'package:line_icons/line_icon.dart';
import 'package:line_icons/line_icons.dart';
import 'package:ubereats/json/home_page_json.dart';
import 'package:ubereats/theme/colors.dart';
import 'package:ubereats/theme/styles.dart';

class StoreDetailPage extends StatefulWidget {
  final String img;

  const StoreDetailPage({Key key, this.img}) : super(key: key);
  @override
  _StoreDetailPageState createState() => _StoreDetailPageState();
}

class _StoreDetailPageState extends State<StoreDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: getFooter(),
      body: getBody(),
    );
  }

  Widget getBody() {
    var size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 60.0),
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 160,
                  width: size.width,
                  child: Image(
                    image: NetworkImage(widget.img),
                    fit: BoxFit.cover,
                  ),
                ),
                SafeArea(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: CircleAvatar(
                          backgroundColor: white,
                          child: Icon(
                            Icons.arrow_back,
                            color: black,
                            size: 18,
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: CircleAvatar(
                          backgroundColor: white,
                          child: Icon(
                            Icons.favorite_border,
                            color: black,
                            size: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Starbucks (Park Row at Beekman St)",
                    style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 30,
                        width: size.width - 30,
                        child: Text(
                          'Cafe - Coffee & Tea - Breakfast and Brunch - Bakery',
                          style: TextStyle(fontSize: 14, height: 1.3),
                        ),
                      )
                    ],
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
                              '40-50 min',
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
                                '4.7',
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
                                '16',
                                style: TextStyle(fontSize: 14),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Divider(
                    color: Colors.black.withOpacity(0.4),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Store Info",
                    style: customContent,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Container(
                        width: size.width * 0.8,
                        child: Row(
                          children: [
                            Icon(
                              Icons.pin_drop,
                              size: 20,
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              '38 park row front 4,new jersey,Ny 103',
                              style: TextStyle(fontSize: 14),
                            )
                          ],
                        ),
                      ),
                      Expanded(
                          child: Text(
                        "More info",
                        style: TextStyle(
                            color: primary,
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ))
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Icon(
                        LineIcons.comment,
                        size: 15,
                        color: primary,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        "people say...",
                        style: TextStyle(
                            fontSize: 14, color: black.withOpacity(0.5)),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(peopleFeedback.length, (index) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 15.0),
                          child: Container(
                            height: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: primary.withOpacity(0.3),
                            ),
                            child: Center(
                                child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15),
                              child: Text(
                                peopleFeedback[0],
                                style: TextStyle(
                                    fontSize: 14,
                                    color: primary,
                                    fontWeight: FontWeight.w500),
                              ),
                            )),
                          ),
                        );
                      }),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    width: (size.width) - 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        color: black.withOpacity(0.3),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Delivery Fee",
                            style: TextStyle(color: black.withOpacity(0.5)),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: (size.width - 70) * 0.8,
                                child: Text(
                                  "There aren't enough couriers nearby,so the delivery fee is higher right now",
                                  style: TextStyle(fontSize: 14, height: 1.5),
                                ),
                              ),
                              CircleAvatar(
                                backgroundColor: black.withOpacity(0.15),
                                child: Icon(
                                  Icons.arrow_circle_up_outlined,
                                  size: 18,
                                  color: black.withOpacity(0.4),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Divider(
                    color: black.withOpacity(0.4),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Menu",
                            style: TextStyle(fontSize: 14),
                          ),
                          Icon(
                            LineIcons.search,
                            size: 25,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "Packed For You",
                        style: TextStyle(
                            fontSize: 21, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Column(
                        children: List.generate(packForYou.length, (index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            child: Row(
                              children: [
                                Container(
                                  width: (size.width - 30) * 0.6,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        packForYou[index]['name'],
                                        style: TextStyle(
                                            fontSize: 16,
                                            height: 1.5,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        packForYou[index]['description'],
                                        style: TextStyle(
                                          fontSize: 16,
                                          height: 1.3,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        packForYou[index]['price'],
                                        style: TextStyle(
                                          fontSize: 16,
                                          height: 1.3,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Expanded(
                                  child: Container(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 2),
                                    height: 80,
                                    child: Image.network(
                                      packForYou[index]['img'],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          );
                        }),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget getFooter() {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Container(
        height: 40,
        width: size.width,
        decoration: BoxDecoration(
          color: white,
          border: Border(
            top: BorderSide(
              color: black.withOpacity(0.01),
            ),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.only(top: 15),
          child: Column(
            children: [
              Text(
                "\$15.00 away from a \$0.00 free delivery",
                style: TextStyle(
                    fontSize: 14.00,
                    fontWeight: FontWeight.w500,
                    color: primary),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
