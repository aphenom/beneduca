import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:beneduca/_navbar_don.dart';
import 'package:beneduca/don_resultat.dart';
import 'package:beneduca/_data.dart';

class ScreenDonConcours extends StatefulWidget {
  const ScreenDonConcours({Key? key}) : super(key: key);

  @override
  State<ScreenDonConcours> createState() => _ScreenDonConcoursState();
}

class _ScreenDonConcoursState extends State<ScreenDonConcours> {
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
        title: const Text("Historique des concours"),
        backgroundColor: Colors.amber,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20),
          child: Column(
            children: [
              Container(
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(15),
                  image: const DecorationImage(
                    image: AssetImage("assets/imgs/promo-faq.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
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
                            "Historique des concours",
                            style: TextStyle(
                              fontSize: 25,
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
                                child: CircleAvatar(child: Icon(Icons.school)),
                              ),
                              title: Text('Semaine de $_passWeek'),
                              subtitle: Text(
                                  "Niveau : Terminale C  -  Participants : 7850"),
                              onTap: () {
                                // Update the state of the app
                                // ...
                                // Then close the drawer
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (_) => const ScreenDonResultat()));
                              },
                            ),
                            for (int index = 1; index < 8; index++)
                              ListTile(
                                leading: ExcludeSemantics(
                                  child:
                                      CircleAvatar(child: Icon(Icons.school)),
                                ),
                                title: Text('Semaine de xx-xx-xxxx'),
                                subtitle: Text(
                                    "Niveau : Lorem Ipsum  -  Participants : xxxx"),
                                onTap: () {
                                  // Update the state of the app
                                  // ...
                                  // Then close the drawer
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (_) =>
                                          const ScreenDonResultat()));
                                },
                              ),
                          ],
                        )
                      ],
                    ),
                  )),
            ],
          ),
        ),
      ),
      drawer: NavBar(),
    );
  }
}
