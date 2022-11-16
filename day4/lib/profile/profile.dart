/*import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  final String name;
  final String srn;
  static const routeName =
      '/profile'; // '/' represents home page, static means that this value will not change on its own throughout the program
  const Profile({Key? key, required this.name, required this.srn})
      : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  String phoneNo = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Container(
          padding: EdgeInsets.fromLTRB(
              MediaQuery.of(context).size.width * 0.25,
              0,
              0,
              0), //to shift the text from left align to left align from 25% of the screen
          //margin: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width*0.25, 0, 0, 0),
          //width: double.infinity,
          //width: MediaQuery.of(context).size.width,
          width: MediaQuery.of(context).size.width *
              0.5, //for the container to be 50% of screen width - never use (width-100), always use *
          color: Colors.black,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'PESU',
                style: TextStyle(
                  fontSize: 36.0,
                  fontFamily: 'Inter',
                  color: Colors.blue,
                ),
              ),
              Image.asset(
                'assets/images/cat.png',
                height: 200.0,
                width: 200.0,
              ),
              Text(widget.name,
                  style: TextStyle(
                    fontSize: 26.0,
                    color: Color(0xff80489C),
                    fontFamily: 'Inter',
                  )),
              Text(
                widget.srn,
                style: TextStyle(
                  fontSize: 26.0,
                  color: Color(0xff80489C),
                  fontFamily: 'Inter',
                ),
                overflow: TextOverflow.ellipsis,
              ),
              const Text(
                '8867010018',
                style: TextStyle(
                  fontSize: 26.0,
                  color: Color(0xff80489C),
                  fontFamily: 'Inter',
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.1,
                    vertical: 0.0),
                child: TextField(
                  onChanged: (val) {
                    setState(() {
                      phoneNo = val;
                    });
                  }, //val is temp variable to store what the person types
                  keyboardType: TextInputType.phone,
                  decoration: const InputDecoration(
                    hintText: 'Please enter your phone number',
                    focusedBorder: UnderlineInputBorder(
                      //OutlineInputBorder - for making a box around the text
                      borderSide: BorderSide(
                        color: Colors.red,
                        width: 3.0,
                      ),
                    ),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  print('Present');
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.green,
                ),
                child: const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text('Present'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


 */

import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  static const routeName = '/profile';
  final String name;
  final String srn;
  final String phoneNo;
  const Profile(
      {Key? key, required this.name, required this.srn, required this.phoneNo})
      : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  String phoneNo = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'PESU',
                style: TextStyle(
                  fontSize: 36.0,
                  color: Colors.blue,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.bold,
                ),
              ),
              Image.asset(
                'assets/images/cat.png',
                height: MediaQuery.of(context).size.width * 0.5,
              ),
              Text(
                widget.name,
                style: TextStyle(
                  fontSize: 24.0,
                  color: Color(0xff2596be),
                  fontFamily: 'Inter',
                ),
              ),
              Text(
                widget.srn,
                style: TextStyle(
                  fontSize: 24.0,
                  color: Color(0xff2596be),
                  fontFamily: 'Inter',
                ),
              ),
              Text(
                widget.phoneNo,
                style: TextStyle(
                  fontSize: 24.0,
                  color: Color(0xff2596be),
                  fontFamily: 'Inter',
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
