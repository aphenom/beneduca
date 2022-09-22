import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:beneduca/button_widget.dart';
import 'package:beneduca/member_home.dart';
import 'package:beneduca/_data.dart';

class ScreenMemberResultat extends StatefulWidget {
  const ScreenMemberResultat({Key? key}) : super(key: key);

  @override
  State<ScreenMemberResultat> createState() => _ScreenMemberResultatState();
}

class _ScreenMemberResultatState extends State<ScreenMemberResultat> {
  @override
  void initState() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive, overlays: []);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    String _passWeek = passWeek();
    return Scaffold(
      appBar: AppBar(
        title: Text('Concours du $_passWeek'),
        backgroundColor: Colors.amber,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20),
          child: Column(
            children: [
              Card(
                  margin: EdgeInsets.symmetric(vertical: 0.0, horizontal: 0.0),
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        Column(
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                'Concours de la semaine du $_passWeek',
                                style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            const Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "Score 19/20 - Rang : 1 sur 7850",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            const Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "Gain : 20.000 FCFA",
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                'Réalisé le $_passWeek',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            const Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "Récompenses :",
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
                          ],
                        ),
                      ],
                    ),
                  )),
              const SizedBox(
                height: 25,
              ),
              Card(
                  margin: EdgeInsets.symmetric(vertical: 0.0, horizontal: 0.0),
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        const Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Les 10 meilleurs scores ont été récompensés",
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
                          children: [
                            ListTile(
                              leading: ExcludeSemantics(
                                child: CircleAvatar(
                                  child: Container(
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                          "assets/imgs/pp-atlas.jpg",
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              title: Text('KLA Amos'),
                              subtitle: Text("Rang : 1 - Score 19/20"),
                            ),
                            for (int index = 2; index < 11; index++)
                              ListTile(
                                leading: ExcludeSemantics(
                                  child:
                                      CircleAvatar(child: Icon(Icons.person)),
                                ),
                                title: Text('Lorem ipsum'),
                                subtitle: Text(
                                    "Rang : " + '$index' + " - Score XX/20"),
                              ),
                          ],
                        ),
                      ],
                    ),
                  )),
              const SizedBox(
                height: 30,
              ),
              Container(
                height: 150,
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
      ),
    );
  }
}
