import 'package:flutter/material.dart';

class Create extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container( // Title Container
              alignment: Alignment.topCenter,
              margin: EdgeInsets.symmetric(vertical: 20),
              child:
              const Text(
                'Create An Event',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 40
                ),
              ),
            ),
            Container( // Form Container
              child:
              Column(
                children: [
                  const Text(
                    'Title'
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    width: 300,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                    ),
                    child: TextFormField(
                      decoration: const InputDecoration(
                          border:  InputBorder.none,
                          hintText: 'Tanglewood Tennis',
                          prefix: Text('    ')
                      ),
                    ),
                  ),
                  const Text(
                      'Activity'
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    width: 300,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                    ),
                    child: TextFormField(
                      decoration: const InputDecoration(
                          border:  InputBorder.none,
                          hintText: 'Tennis',
                          prefix: Text('    ')
                      ),
                    ),
                  ),
                  const Text(
                      'Date'
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    width: 300,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                    ),
                    child: TextFormField(
                      decoration: const InputDecoration(
                          border:  InputBorder.none,
                          hintText: '02-04-23',
                          prefix: Text('    ')
                      ),
                    ),
                  ),
                  const Text(
                      'Place'
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    width: 300,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                    ),
                    child: TextFormField(
                      decoration: const InputDecoration(
                          border:  InputBorder.none,
                          hintText: '1401 Center St',
                          prefix: Text('    ')
                      ),
                    ),
                  ),
                  Container(
                    width: 300,
                    height: 50,
                    margin: EdgeInsets.symmetric(vertical: 20),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(40))
                    ),
                    child:
                    TextButton(
                      style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.black)
                      ),
                      onPressed: () {  },
                      child: const Text(
                          'Create',
                        style: TextStyle(
                          color: Colors.white
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )

            // Render your event creation form here
          ],
        ),
      )
    );
  }
}
