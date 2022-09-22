import 'package:beneduca/member_concours.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:beneduca/member_quiz.dart';
import 'package:beneduca/member_recompenses.dart';
import 'package:beneduca/_navbar_member.dart';
import 'package:beneduca/_data.dart';

class ScreenMember extends StatefulWidget {
  const ScreenMember({Key? key}) : super(key: key);

  @override
  State<ScreenMember> createState() => _ScreenMemberState();
}

class _ScreenMemberState extends State<ScreenMember> {
  @override
  void initState() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive, overlays: []);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    String _semaine = semaine();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tableau de bord - Beneduca"),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Container(
            child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            children: <Widget>[
              Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(15),
                  image: const DecorationImage(
                    image: AssetImage("assets/imgs/first_screen_students.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Flexible(
                flex: 1,
                fit: FlexFit.tight,
                child: Row(
                  children: <Widget>[
                    Flexible(
                      flex: 1,
                      fit: FlexFit.tight,
                      child: Container(
                        child: Column(
                          children: [
                            Icon(Icons.payments),
                            Text("Gains",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16.0,
                                    color: Colors.black)),
                            Text("80.000 FCFA",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18.0,
                                    color: Colors.black)),
                          ],
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.amber,
                        ), //BoxDecoration
                      ), //Container
                    ), //Flexible
                    SizedBox(
                      width: 20,
                    ), //SizedBox
                    Flexible(
                      flex: 1,
                      fit: FlexFit.tight,
                      child: Container(
                          child: Column(
                            children: [
                              Icon(
                                Icons.payments,
                                color: Colors.white,
                              ),
                              Text("Retraits",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16.0,
                                      color: Colors.white)),
                              Text("15.000 FCFA",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18.0,
                                      color: Colors.white)),
                            ],
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.black,
                          ) //BoxDecoration
                          ), //Container
                    ) //Flexible
                  ], //<Widget>[]
                  mainAxisAlignment: MainAxisAlignment.center,
                ), //Row
              ), //Flexible
              SizedBox(
                height: 20,
              ), //SizedBox
              Flexible(
                flex: 1,
                fit: FlexFit.tight,
                child: Container(
                  width: 380,
                  height: 200,
                  child: Column(
                    children: [
                      Icon(
                        Icons.school,
                        color: Colors.white,
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (_) =>
                                  ScreenMemberQuiz())); // Perform some action
                        },
                        child: Text(
                            'Réaliser le concours de la semaine du $_semaine',
                            style: TextStyle(color: Colors.white)),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blue), //BoxDecoration
                ), //Container
              ), //Flexible
              SizedBox(
                height: 20,
              ), //SizedBox
              Flexible(
                flex: 2,
                fit: FlexFit.tight,
                child: Row(
                  children: <Widget>[
                    Flexible(
                      flex: 1,
                      fit: FlexFit.tight,
                      child: Container(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            Icon(
                              Icons.school,
                              color: Colors.white,
                            ),
                            Text("Concours réalisés",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16.0,
                                    color: Colors.white)),
                            SizedBox(
                              height: 20,
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (_) =>
                                        ScreenMemberConcours())); // Perform some action
                              },
                              child: const Text(
                                '7',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 24.0,
                                    color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.black,
                        ), //BoxDecoration
                      ), //Container
                    ), //Flexible
                    SizedBox(
                      width: 20,
                    ), //SizedBox
                    Flexible(
                      flex: 1,
                      fit: FlexFit.tight,
                      child: Container(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            Icon(
                              Icons.military_tech,
                              color: Colors.black,
                            ),
                            Text("Récompenses",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16.0,
                                    color: Colors.black)),
                            SizedBox(
                              height: 20,
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (_) =>
                                        ScreenMemberRecompenses())); // Perform some action
                              },
                              child: const Text(
                                '4',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 24.0,
                                    color: Colors.black),
                              ),
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.amber,
                        ), //BoxDecoration
                      ), //Container
                    ),
                  ], //<Widget>[]
                  mainAxisAlignment: MainAxisAlignment.center,
                ), //Row
              ), //Flexible
            ], //<Widget>[]
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
          ), //Column
        ) //Padding
            ), //Container
      ),
      drawer: NavBarMember(),
    );
  }
}
