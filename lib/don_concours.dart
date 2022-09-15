import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:beneduca/_navbar_don.dart';
import 'package:beneduca/don_resultat.dart';

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
    return Scaffold(
      appBar: AppBar(
        title: const Text("Beneduca"),
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
                  for (int index = 1; index < 8; index++)
                    ListTile(
                      leading: ExcludeSemantics(
                        child: CircleAvatar(child: Icon(Icons.school)),
                      ),
                      title: Text('Semaine de xx-xx-xxxx'),
                      subtitle:
                          Text("Niveau : Lorem Ipsum  -  Participants : xxxx"),
                      onTap: () {
                        // Update the state of the app
                        // ...
                        // Then close the drawer
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (_) => const ScreenDonResultat()));
                      },
                    ),
                ],
              )
            ],
          ),
        ),
      ),
      drawer: NavBar(),
    );
  }
}
