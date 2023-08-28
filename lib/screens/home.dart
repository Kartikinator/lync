import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Container> cards = [
      Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25), color: Colors.white),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25)),
                  color: Colors.red[300]),
              height: 200,
              width: 500,
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Thursday, March 24',
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                  Text(
                    '3:00 PM',
                    style: TextStyle(color: Colors.white, fontSize: 70),
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 40),
              child: const Column(
                children: [
                  Text(
                    'Basketball @',
                    style: TextStyle(fontSize: 40),
                  ),
                  Text(
                    'Grady Park',
                    style: TextStyle(fontSize: 50),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25), color: Colors.white),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25)),
                  color: Colors.blue[300]),
              height: 200,
              width: 500,
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Thursday, March 24',
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                  Text(
                    '8:00 PM',
                    style: TextStyle(color: Colors.white, fontSize: 70),
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 40),
              child: const Column(
                children: [
                  Text(
                    'Basketball @',
                    style: TextStyle(fontSize: 40),
                  ),
                  Text(
                    'Clark Courts',
                    style: TextStyle(fontSize: 50),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25), color: Colors.white),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25)),
                  color: Colors.green[300]),
              height: 200,
              width: 500,
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Thursday, March 24',
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                  Text(
                    '6:30 PM',
                    style: TextStyle(color: Colors.white, fontSize: 70),
                  )
                ],
              ),
            ),
            Container(
              width: 350,
              margin: const EdgeInsets.symmetric(vertical: 40),
              child: const Column(
                children: [
                  Text(
                    'Pickleball @',
                    style: TextStyle(fontSize: 40),
                  ),
                  AutoSizeText(
                    'Tanglewood Park',
                    style: TextStyle(fontSize: 50),
                    maxLines: 1,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    ];

    return Scaffold(
      backgroundColor: const Color(0xEDFFFEFF),
      appBar: AppBar(
        title: const Text(
          'lync',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: const Color(0xEDFFFEFF),
        elevation: 0,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  margin: const EdgeInsets.only(left: 20),
                  child: const Text(
                    'Hi, kartikeya_g',
                    style: TextStyle(
                      fontSize: 35,
                    ),
                  ),
                )),
            Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  margin: const EdgeInsets.only(left: 20),
                  child: const Text(
                    'Upcoming',
                    style: TextStyle(
                      fontSize: 50,
                    ),
                  ),
                )),
            Flexible(
              child: CardSwiper(
                cardsCount: cards.length,
                cardBuilder: (context, index) => cards[index],
              ),
            ),
            // Render your event cards here
          ],
        ),
      ),
    );
  }
}
