import 'package:flutter/material.dart';
import 'package:prototype/pages/home/homepage.dart';
import 'package:marquee/marquee.dart';
import 'package:prototype/pages/userpage/userpage.dart';

class Registration extends StatefulWidget {
  @override
  _RegistrationState createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  TextEditingController phone = TextEditingController();
  bool isChecked = false;
  String dropdownValue = '+65 Singapore';
  String countrycode = '+65';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                'assets/logo.png',
                width: 100,
              ),
            ),
          ),
          actions: [
            IconButton(icon: Icon(Icons.notifications), onPressed: () {}),
            IconButton(icon: Icon(Icons.search), onPressed: () {})
          ],
        ),
        drawer: Drawer(
          child: Column(
            children: [
              UserAccountsDrawerHeader(
                accountName: Text('Rohit Sharma'),
                accountEmail: Text('rohit@gmail.com'),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Text(
                    'R',
                    style: Theme.of(context)
                        .textTheme
                        .headline4
                        .copyWith(color: Theme.of(context).primaryColor),
                  ),
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.pop(context);
                  Navigator.of(context).push(
                    PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) =>
                          HomePage(),
                      transitionsBuilder:
                          (context, animation, secondaryAnimation, child) {
                        var begin = Offset(1.0, 0.0);
                        var end = Offset.zero;
                        var curve = Curves.easeInOut;

                        var tween = Tween(begin: begin, end: end)
                            .chain(CurveTween(curve: curve));

                        return SlideTransition(
                          position: animation.drive(tween),
                          child: child,
                        );
                      },
                    ),
                  );
                },
                leading: Icon(Icons.verified_user),
                title: Text('Verification'),
              ),
              Divider(),
              ListTile(
                onTap: () {
                  Navigator.pop(context);
                  Navigator.of(context).push(
                    PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) =>
                          UserPage(),
                      transitionsBuilder:
                          (context, animation, secondaryAnimation, child) {
                        var begin = Offset(1.0, 0.0);
                        var end = Offset.zero;
                        var curve = Curves.easeInOut;

                        var tween = Tween(begin: begin, end: end)
                            .chain(CurveTween(curve: curve));

                        return SlideTransition(
                          position: animation.drive(tween),
                          child: child,
                        );
                      },
                    ),
                  );
                },
                leading: Icon(Icons.assignment),
                title: Text('Agent Details'),
              ),
              Divider(),
              Spacer(),
              Text('Version 1.0.0'),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(
              bottom: 8.0, left: 8.0, right: 8.0, top: 20.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                    style: Theme.of(context).textTheme.subhead,
                  ),
                ),
                CheckboxListTile(
                    controlAffinity: ListTileControlAffinity.leading,
                    title: Text('I agree'),
                    value: isChecked,
                    onChanged: (v) {
                      setState(() {
                        this.isChecked = v;
                      });
                    }),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('Select Country'),
                    DropdownButton<String>(
                      value: dropdownValue,
                      iconSize: 24,
                      elevation: 16,
                      onChanged: (String newValue) {
                        setState(() {
                          dropdownValue = newValue;
                          this.countrycode = newValue.substring(0, 3);
                        });
                      },
                      items: <String>[
                        '+65 Singapore',
                        '+91 India',
                        '+1 United States',
                        '+44 United Kingdom'
                      ].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        countrycode,
                        style: Theme.of(context)
                            .textTheme
                            .headline6
                            .copyWith(fontSize: 18.0),
                      ),
                    ),
                    Expanded(
                      child: SizedBox(
                        height: 50,
                        child: TextFormField(
                          keyboardType: TextInputType.phone,
                          controller: phone,
                          validator: (value) => value.isNotEmpty
                              ? null
                              : 'Phone Number should not be Empty',
                          decoration: InputDecoration(
                            hintText: 'Enter Your Phone Number',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.blueGrey[800])),
                      onPressed: isChecked
                          ? () {
                              phone.text.isEmpty
                                  ? ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: const Text(
                                            'Phone Number Should not be Empty'),
                                      ),
                                    )
                                  : Navigator.of(context).push(
                                      PageRouteBuilder(
                                        pageBuilder: (context, animation,
                                                secondaryAnimation) =>
                                            HomePage(),
                                        transitionsBuilder: (context, animation,
                                            secondaryAnimation, child) {
                                          var begin = Offset(1.0, 0.0);
                                          var end = Offset.zero;
                                          var curve = Curves.easeInOut;

                                          var tween = Tween(
                                                  begin: begin, end: end)
                                              .chain(CurveTween(curve: curve));

                                          return SlideTransition(
                                            position: animation.drive(tween),
                                            child: child,
                                          );
                                        },
                                      ),
                                    );
                            }
                          : () {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: const Text(
                                      'Please agree to the user consent'),
                                ),
                              );
                            },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Submit'),
                      ),
                    ),
                    ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.blueGrey[800])),
                      onPressed: isChecked
                          ? () {
                              setState(() {
                                isChecked = false;
                              });
                            }
                          : () {
                              Navigator.pop(context);
                            },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Cancel'),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
