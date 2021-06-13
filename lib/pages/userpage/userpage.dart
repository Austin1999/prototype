import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';
import 'package:prototype/pages/home/homepage.dart';

class UserPage extends StatefulWidget {
  @override
  _UserPageState createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  TextEditingController question = TextEditingController();
  TextEditingController answer = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: Text('Hi Rohit'),
            actions: [
              IconButton(icon: Icon(Icons.notifications), onPressed: () {}),
              IconButton(icon: Icon(Icons.search), onPressed: () {})
            ],
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 25,
                    width: double.infinity,
                    child: Marquee(
                      text: 'Sample Running Text in our App',
                      style: TextStyle(fontWeight: FontWeight.bold),
                      scrollAxis: Axis.horizontal,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      blankSpace: 20.0,
                      startPadding: 10.0,
                      accelerationCurve: Curves.linear,
                      decelerationCurve: Curves.easeOut,
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: SizedBox(
                          width: size.width / 2,
                          child: Text(
                            'Agent Name',
                            overflow: TextOverflow.clip,
                            style: Theme.of(context).textTheme.headline6,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      Expanded(
                        child: SizedBox(
                          width: size.width / 2,
                          child: Row(
                            children: [
                              Text(
                                ': Rohit Sharma',
                                overflow: TextOverflow.clip,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText2
                                    .copyWith(fontSize: 18.0),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: 20,
                                  width: 20,
                                  child: Image.asset('assets/verified.png'),
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: SizedBox(
                          width: size.width / 2,
                          child: Text(
                            'Agent Branch',
                            overflow: TextOverflow.clip,
                            style: Theme.of(context).textTheme.headline6,
                          ),
                        ),
                      ),
                      Expanded(
                        child: SizedBox(
                          width: size.width / 2,
                          child: Text(
                            ': T. Nagar',
                            overflow: TextOverflow.clip,
                            style: Theme.of(context)
                                .textTheme
                                .bodyText2
                                .copyWith(fontSize: 18.0),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: SizedBox(
                          width: size.width / 2,
                          child: Text(
                            'City',
                            overflow: TextOverflow.clip,
                            style: Theme.of(context).textTheme.headline6,
                          ),
                        ),
                      ),
                      Expanded(
                        child: SizedBox(
                          width: size.width / 2,
                          child: Text(
                            ': Chennai',
                            overflow: TextOverflow.clip,
                            style: Theme.of(context)
                                .textTheme
                                .bodyText2
                                .copyWith(fontSize: 18.0),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: SizedBox(
                          width: size.width / 2,
                          child: Text(
                            'Address Line 1',
                            overflow: TextOverflow.clip,
                            style: Theme.of(context).textTheme.headline6,
                          ),
                        ),
                      ),
                      Expanded(
                        child: SizedBox(
                          width: size.width / 2,
                          child: Text(
                            ': 123 Anna Street',
                            overflow: TextOverflow.clip,
                            style: Theme.of(context)
                                .textTheme
                                .bodyText2
                                .copyWith(fontSize: 18.0),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: SizedBox(
                          width: size.width / 2,
                          child: Text(
                            'Address Line 2',
                            overflow: TextOverflow.clip,
                            style: Theme.of(context).textTheme.headline6,
                          ),
                        ),
                      ),
                      Expanded(
                        child: SizedBox(
                          width: size.width / 2,
                          child: Text(
                            ': 5th Floor',
                            overflow: TextOverflow.clip,
                            style: Theme.of(context)
                                .textTheme
                                .bodyText2
                                .copyWith(fontSize: 18.0),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: SizedBox(
                          width: size.width / 2,
                          child: Text(
                            'Phone',
                            overflow: TextOverflow.clip,
                            style: Theme.of(context).textTheme.headline6,
                          ),
                        ),
                      ),
                      Expanded(
                        child: SizedBox(
                          width: size.width / 2,
                          child: Text(
                            ': +91 44988 87777',
                            overflow: TextOverflow.clip,
                            style: Theme.of(context)
                                .textTheme
                                .bodyText2
                                .copyWith(fontSize: 18.0),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: SizedBox(
                          width: size.width / 2,
                          child: Text(
                            'Status',
                            overflow: TextOverflow.clip,
                            style: Theme.of(context).textTheme.headline6,
                          ),
                        ),
                      ),
                      Expanded(
                        child: SizedBox(
                            width: size.width / 2,
                            child: Container(
                                height: 100,
                                width: 100,
                                child: Image.asset('assets/verifiedstamp.png'))
                            // Text(
                            //   ': Verified',
                            //   overflow: TextOverflow.clip,
                            //   style: Theme.of(context)
                            //       .textTheme
                            //       .bodyText2
                            //       .copyWith(
                            //           fontSize: 18.0, color: Colors.green[600]),
                            // ),
                            ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Divider(
                    color: Colors.grey[600],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Question',
                      style: Theme.of(context)
                          .textTheme
                          .headline6
                          .copyWith(fontSize: 18.0),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        height: 50,
                        width: size.width * 0.60,
                        child: TextFormField(
                          controller: question,
                          decoration: InputDecoration(
                            hintText: 'Enter Your Question',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: size.width * 0.25,
                        child: ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  Colors.blueGrey[800])),
                          onPressed: () {},
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('Submit'),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Answer',
                      style: Theme.of(context)
                          .textTheme
                          .headline6
                          .copyWith(fontSize: 18.0),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        height: 50,
                        width: size.width * 0.60,
                        child: TextFormField(
                          controller: answer,
                          decoration: InputDecoration(
                            hintText: 'Enter Your Answer',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: size.width * 0.25,
                        child: ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  Colors.blueGrey[800])),
                          onPressed: () {
                            setState(() {
                              this.answer.text = 'Answer for your Question';
                            });
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('Get Answer'),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: ElevatedButton.icon(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.blueGrey[800])),
                      onPressed: () {
                        question.clear();
                        answer.clear();
                      },
                      label: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Retry'),
                      ),
                      icon: Icon(Icons.refresh),
                    ),
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
                child: Text('Verified'),
              ),
            ),
          )),
    );
  }
}
