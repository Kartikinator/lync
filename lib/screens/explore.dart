import 'package:flutter/material.dart';
import 'package:expandable/expandable.dart';
import 'dart:math' as math;

class Explore extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Variables
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
        body: SafeArea(
      child: Center(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 20, top: 10),
              alignment: Alignment.topLeft,
              child: const Text(
                'Explore',
                style: TextStyle(fontSize: 70),
              ),
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  width: screenWidth - 125,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                  ),
                  child: TextFormField(
                    decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Search',
                        prefix: Text('    ')),
                  ),
                ),
                const ElevatedButton(
                    onPressed: null,
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(Colors.black)),
                    child: Icon(
                      Icons.search,
                      color: Colors.white,
                    ))
              ],
            ),
            const Text(
              'Events Near You',
              style: TextStyle(fontSize: 25),
            ),
            Flexible(
                child: Align(
              alignment: Alignment.topCenter,
              child: ListView(
                children: [
                  _expandingEventCard(
                      'Tanglewood Pickleball',
                      '1501 Taft St Houston, TX 77019',
                      'January 21st - 8:00 PM'),
                  _expandingEventCard(
                      'Tanglewood Pickleball',
                      '1501 Taft St Houston, TX 77019',
                      'January 21st - 8:00 PM'),
                  _expandingEventCard(
                      'Tanglewood Pickleball',
                      '1501 Taft St Houston, TX 77019',
                      'January 21st - 8:00 PM'),
                  _expandingEventCard(
                      'Tanglewood Pickleball',
                      '1501 Taft St Houston, TX 77019',
                      'January 21st - 8:00 PM'),
                ],
              ),
            ))
          ],
        ),
      ),
    ));
  }
}

Widget _eventCard(String title, String address, String date) {
  return Container(
    width: 400,
    margin: EdgeInsets.symmetric(vertical: 10),
    padding: EdgeInsets.only(bottom: 20),
    decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(25))),
    child: Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(vertical: 20),
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 25,
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Icon(
              Icons.sports_basketball_rounded,
              size: 100,
            ),
            Container(
              height: 100,
              width: 260,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 275,
                    child: Row(
                      children: [
                        Icon(Icons.pin_drop),
                        Container(
                          width: 225,
                          margin: EdgeInsets.only(left: 10),
                          child: Expanded(
                            child: Text(
                              address,
                              style: const TextStyle(fontSize: 20),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 275,
                    child: Row(
                      children: [
                        Icon(Icons.calendar_today),
                        Container(
                          margin: EdgeInsets.only(left: 10),
                          child: Expanded(
                            child: Text(
                              date,
                              style: const TextStyle(fontSize: 20),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        )
      ],
    ),
  );
}

Widget _expandingEventCard(String title, String address, String date) {
  return ExpandableTheme(
    data: const ExpandableThemeData(
      iconColor: Colors.grey,
      iconSize: 0,
      iconPadding: EdgeInsets.zero,
      iconRotationAngle: math.pi,
      expandIcon: Icons.arrow_right,
      collapseIcon: Icons.arrow_drop_down,
    ),
    child: ExpandablePanel(
      header: Container(
        width: 400,
        margin: EdgeInsets.symmetric(vertical: 10),
        padding: EdgeInsets.only(bottom: 20),
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(25))),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 20),
              child: Text(
                title,
                style: const TextStyle(
                  fontSize: 25,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Icon(
                  Icons.sports_basketball_rounded,
                  size: 100,
                ),
                Container(
                  height: 100,
                  width: 260,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 275,
                        child: Row(
                          children: [
                            Icon(Icons.pin_drop),
                            Container(
                              width: 225,
                              margin: EdgeInsets.only(left: 10),
                              child: Expanded(
                                child: Text(
                                  address,
                                  style: const TextStyle(fontSize: 20),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: 275,
                        child: Row(
                          children: [
                            Icon(Icons.calendar_today),
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              child: Expanded(
                                child: Text(
                                  date,
                                  style: const TextStyle(fontSize: 20),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      expanded: Container(
        alignment: Alignment.center,
        child: SizedBox(
          width: 200, // Set the desired width of the button
          child: TextButton(
            style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Colors.green),
            ),
            onPressed: () {},
            child: const Text(
              'Join',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
      collapsed: Container(),
    ),
  );
}
