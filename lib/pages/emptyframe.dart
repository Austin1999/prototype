import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';

class EmptyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: Row(
              children: [
                Text('App Name'),
                SizedBox(
                  width: 10.0,
                ),
                Container(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      'assets/logo.png',
                      width: 100,
                    ),
                  ),
                ),
              ],
            ),
            actions: [
              IconButton(icon: Icon(Icons.notifications), onPressed: () {}),
              IconButton(icon: Icon(Icons.search), onPressed: () {})
            ],
          ),
          drawer: Drawer(
            child: Center(
              child: Text('Menu Overlay'),
            ),
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  SizedBox(
                    height: 35,
                    width: double.infinity,
                    child: Center(
                      child: Marquee(
                        text: 'Sample Advertising in our App',
                        style: TextStyle(fontWeight: FontWeight.bold),
                        scrollAxis: Axis.horizontal,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        blankSpace: 20.0,
                        startPadding: 10.0,
                        accelerationCurve: Curves.linear,
                        decelerationCurve: Curves.easeOut,
                      ),
                    ),
                  ),
                  Divider(
                    color: Colors.grey[900],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Screen',
                    style: Theme.of(context).textTheme.headline,
                  ),
                ],
              ),
            ),
          ),
          bottomNavigationBar: BottomAppBar(
            child: Container(
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: Colors.grey[300],
                  ),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Status Bar'),
              ),
            ),
          )),
    );
  }
}
