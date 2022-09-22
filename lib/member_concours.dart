import 'package:flutter/material.dart';
import 'package:beneduca/button_widget.dart';
import 'package:beneduca/member_home.dart';
import 'package:beneduca/member_quiz.dart';
import 'package:beneduca/member_resultat.dart';
import 'package:beneduca/leading_card.dart';
import 'package:beneduca/_navbar_member.dart';
import 'package:beneduca/_data.dart';
import 'package:flutter/services.dart';

class ScreenMemberConcours extends StatefulWidget {
  const ScreenMemberConcours({Key? key}) : super(key: key);

  @override
  State<ScreenMemberConcours> createState() => _ScreenMemberConcoursState();
}

class _ScreenMemberConcoursState extends State<ScreenMemberConcours>
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
    String _semaine = semaine();
    String _fin = fin();
    String _passWeek = passWeek();
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          title: const Text("Concours"),
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
                    "En cours",
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
                    "Mes concours",
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
          SingleChildScrollView(
            padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20),
            child: Column(
              children: [
                Card(
                    margin:
                        EdgeInsets.symmetric(vertical: 0.0, horizontal: 0.0),
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'Concours de la semaine du $_semaine',
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'A réaliser avant le $_fin',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          const Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Les 10 meilleurs scores seront récompensés",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("1er : 20.000 FCFA"),
                              Text("2ème : 15.000 FCFA"),
                              Text("3ème à 5ème : 10.000 FCFA"),
                              Text("6ème au 9ème : 7.500 FCFA"),
                              Text("10ème : 5.000 FCFA"),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const CallToAction(
                            callToAction: ScreenMemberQuiz(),
                            txtBtn: "Reléver le défi",
                          ),
                        ],
                      ),
                    )),
                const SizedBox(
                  height: 25,
                ),
                Container(
                  height: 150,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(15),
                    image: const DecorationImage(
                      image: AssetImage("assets/imgs/MTN-MoMoPay.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Card(
              margin: EdgeInsets.symmetric(vertical: 0.0, horizontal: 0.0),
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: ListView(
                  restorationId: 'list_demo_list_view',
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  children: [
                    ListTile(
                      leading: ExcludeSemantics(
                        child: CircleAvatar(child: Icon(Icons.school)),
                      ),
                      title: Text('Semaine de $_passWeek'),
                      subtitle: Text("Score 19/20"),
                      onTap: () {
                        // Update the state of the app
                        // ...
                        // Then close the drawer
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (_) => const ScreenMemberResultat()));
                      },
                    ),
                    for (int index = 1; index < 7; index++)
                      ListTile(
                        leading: ExcludeSemantics(
                          child: CircleAvatar(child: Icon(Icons.school)),
                        ),
                        title: Text('Semaine de xx-xx-xxxx'),
                        subtitle: Text("Score XX"),
                        onTap: () {
                          // Update the state of the app
                          // ...
                          // Then close the drawer
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (_) => const ScreenMemberResultat()));
                        },
                      ),
                  ],
                ),
              )),
        ],
        controller: _controller,
      ),
      drawer: NavBarMember(),
    );
  }
}
