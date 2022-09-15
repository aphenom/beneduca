import 'package:flutter/material.dart';
import 'package:beneduca/button_widget.dart';
import 'package:beneduca/member_retrait.dart';
import 'package:beneduca/_navbar_member.dart';
import 'package:flutter/services.dart';

class ScreenMemberRecompenses extends StatefulWidget {
  const ScreenMemberRecompenses({Key? key}) : super(key: key);

  @override
  State<ScreenMemberRecompenses> createState() =>
      _ScreenMemberRecompensesState();
}

class _ScreenMemberRecompensesState extends State<ScreenMemberRecompenses>
    with TickerProviderStateMixin {
  late TabController _controller;
  final int _selectedIndex = 0;
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive, overlays: []);
    super.initState();
    _controller = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          title: const Text("Beneduca"),
          backgroundColor: Colors.amber,
          bottom: TabBar(
            controller: _controller,
            // give the indicator a decoration (color and border radius)
            labelColor: Colors.white,
            unselectedLabelColor: const Color(0xff848383),
            tabs: const [
              // first tab [you can add an icon using the icon property]
              Tab(
                child: Opacity(
                  opacity: 1,
                  child: Text(
                    "Gains",
                    style: TextStyle(
                      color: Color(0xffF8F9FA),
                      fontSize: 15.0,
                      letterSpacing: .29,
                    ),
                  ),
                ),
              ),
              // second tab [you can add an icon using the icon property]
              Tab(
                child: Opacity(
                  opacity: 1,
                  child: Text(
                    "Retraits",
                    style: TextStyle(
                      color: Color(0xffF8F9FA),
                      fontSize: 15.0,
                      letterSpacing: .29,
                    ),
                  ),
                ),
              ),
            ],
          )),
      body: TabBarView(
        children: [
          Center(
            child: Container(
                child: Padding(
              padding: const EdgeInsets.all(14.0),
              child: Column(
                children: <Widget>[
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
                    child: Row(
                      children: <Widget>[
                        Flexible(
                          flex: 1,
                          fit: FlexFit.tight,
                          child: Container(
                            child: Column(
                              children: [
                                Icon(Icons.military_tech),
                                Text("Récompenses",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16.0,
                                        color: Colors.black)),
                                Text("4",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18.0,
                                        color: Colors.black)),
                              ],
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.blue,
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
                                  Text("Solde",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16.0,
                                          color: Colors.white)),
                                  Text("65.000 FCFA",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18.0,
                                          color: Colors.white)),
                                ],
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.green,
                              ) //BoxDecoration
                              ), //Container
                        ) //Flexible
                      ], //<Widget>[]
                      mainAxisAlignment: MainAxisAlignment.center,
                    ), //Row
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  const CallToAction(
                    callToAction: ScreenMemberRetrait(),
                    txtBtn: "Effectuer un retrait",
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: 200,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(15),
                      image: const DecorationImage(
                        image: AssetImage("assets/imgs/promo-momo-2.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ], //<Widget>[]
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
              ), //Column
            ) //Padding
                ), //Container
          ),
          ListView(
            restorationId: 'list_demo_list_view',
            padding: const EdgeInsets.symmetric(vertical: 8),
            children: [
              for (int index = 1; index < 4; index++)
                ListTile(
                  leading: ExcludeSemantics(
                    child: CircleAvatar(child: Icon(Icons.payments)),
                  ),
                  title: Text('- 5.000 FCFA'),
                  subtitle: Text("xx-xx-xxxx"),
                ),
            ],
          )
        ],
        controller: _controller,
      ),
      drawer: NavBarMember(),
    );
  }
}
