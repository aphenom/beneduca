import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
//import 'package:no_name_app/home.dart';
import 'package:beneduca/leading_card.dart';
import 'package:beneduca/screen_two.dart';
import 'package:beneduca/don_home.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  void initState() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive, overlays: []);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Padding(
                padding: EdgeInsets.only(left: 15.0, right: 15),
                child: LeadingCard()),
            const SizedBox(
              height: 10,
            ),
            /*Flexible(
                child: _card(
                    "assets/imgs/donateur_home_be.jpg", const ScreenDon())),
                    */
            Flexible(
                child: _test(
                    'assets/imgs/donateur_home_be.jpg',
                    'Je contribue à l’excellence !',
                    "Donateur.trice",
                    'favorite',
                    const ScreenDon())),
            const SizedBox(
              height: 10,
            ),
            Flexible(
                child: _test('assets/imgs/first_screen_students.jpg', '',
                    "Elève - Etudiant.e", 'star', const ScreenTwo())),
            //"assets/imgs/first_screen_students.jpg", const ScreenTwo()))
          ],
        ),
      ),
    );
  }

  Widget _leadingCard() {
    return Container(
      height: 200,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(15),
        image: const DecorationImage(
          image: AssetImage("assets/imgs/beneduca_logo_carre.png"),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _card(String _img, _url) {
    return CupertinoButton(
      child: Container(
        height: 200,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(_img),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Container(
          margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
          child: const Text(
            "Elève - Etudiant.e (Je relève le défi de l’excellence)",
            style: TextStyle(
              color: Colors.white,
              backgroundColor: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
      onPressed: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (_) => _url));
      },
    );
  }

  Widget _test(String _img, _label, _titre, _icon, _url) {
    return CupertinoButton(
      child: Container(
          constraints: BoxConstraints.expand(
            height: 200.0,
            width: double.infinity,
          ),
          padding: EdgeInsets.only(left: 16.0, bottom: 4.0, right: 16.0),
          decoration: BoxDecoration(
            border: Border.all(
                // Set border color
                width: 1.0), // Set border width
            borderRadius: BorderRadius.all(
                Radius.circular(10.0)), // Set rounded corner radius
            boxShadow: [
              BoxShadow(
                  blurRadius: 10, color: Colors.black, offset: Offset(1, 1))
            ], // Make rounded corner of border

            image: DecorationImage(
              image: AssetImage(_img),
              fit: BoxFit.cover,
            ),
          ),
          child: Stack(
            children: <Widget>[
              Positioned(
                // headline
                child: Container(
                  child: Wrap(
                    alignment: WrapAlignment.center,
                    children: [
                      Text(_label,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16.0,
                              color: Colors.black))
                    ],
                  ),
                  decoration: BoxDecoration(
                      color: _label != ""
                          ? Colors.white.withOpacity(0.7)
                          : Colors.white.withOpacity(0)),
                  padding: EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 8.0),
                ),
                right: 0.0,
                top: 4.0,
              ),
              Positioned(
                // headline
                child: Container(
                  child: Wrap(
                    alignment: WrapAlignment.center,
                    children: [
                      Text(_titre,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.black)),
                    ],
                  ),
                  decoration:
                      BoxDecoration(color: Colors.white.withOpacity(0.7)),
                  padding: EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 8.0),
                ),
                left: 0.0,
                bottom: 0.0,
              ),
              Positioned(
                // headline
                child: Container(
                  child: Wrap(
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      Icon(_icon == "favorite" ? Icons.favorite : Icons.star,
                          color: Colors.black),
                      Text('Accéder',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                              color: Colors.black)),
                    ],
                  ),
                  decoration: BoxDecoration(color: Colors.amber),
                  padding: EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 8.0),
                ),
                right: 0.0,
                bottom: 0.0,
              ),
            ],
          )),
      onPressed: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (_) => _url));
      },
    ); /*Card(
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: [
          ListTile(
            leading: Icon(Icons.arrow_drop_down_circle),
            title: const Text('Elève - Etudiant.e'),
            subtitle: Text(
              'Je relève le défi de l’excellence',
              style: TextStyle(color: Colors.black.withOpacity(0.6)),
            ),
          ),
          ButtonBar(
            alignment: MainAxisAlignment.start,
            children: [
              FlatButton(
                textColor: const Color(0xFF6200EE),
                onPressed: () {
                  // Perform some action
                },
                child: const Text('Accéder'),
              ),
            ],
          ),
          Image.asset('assets/imgs/first_screen_students.jpg'),
        ],
      ),
    );*/
  }
}
