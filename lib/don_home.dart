import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:beneduca/button_widget.dart';
import 'package:beneduca/don_payment.dart';
import 'package:beneduca/_navbar_don.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class ScreenDon extends StatefulWidget {
  const ScreenDon({Key? key}) : super(key: key);

  @override
  State<ScreenDon> createState() => _ScreenDonState();
}

class _ScreenDonState extends State<ScreenDon> {
  @override
  void initState() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive, overlays: []);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Faire un don - Beneduca"),
        backgroundColor: Colors.amber,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20),
          child: Column(
            children: [
              Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(15),
                  image: const DecorationImage(
                    image: AssetImage("assets/imgs/donateur_home_be.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Card(
                  margin: EdgeInsets.symmetric(vertical: 0.0, horizontal: 0.0),
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        const Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Collecte de fonds 2023",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        StepProgressIndicator(
                          totalSteps: 100,
                          currentStep: 32,
                          size: 20,
                          padding: 0,
                          selectedColor: Colors.yellow,
                          unselectedColor: Colors.black,
                          roundedEdges: Radius.circular(10),
                          selectedGradientColor: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [Colors.yellowAccent, Colors.deepOrange],
                          ),
                          unselectedGradientColor: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [Colors.black, Colors.blue],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              child: const Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  "9.000.000 / 30.000.000 FCFA",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const Text(
                            "Le but de cette collecte de fonds est de permettre de pouvoir organiser des concours hebdomadaires portant sur les cours et/ou la culture générale à l'endroit des élèves et étudiants.es durant toute l'année 2023 ; au sortir desquelles les meilleurs seront récompensés."),
                        const Text(
                          "Nous entendons ainsi, avec votre concoure redonner le gôut de l'excellence aux élèves et étudiants.es afin de réhausser le système éducatif.",
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const CallToAction(
                          callToAction: ScreenDonPayment(),
                          txtBtn: "Je participe",
                        ),
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

  /*Widget _drawer() {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: const Text(
              "Donateur.trice",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            accountEmail: const Text(
              "Je contribue à l’excellence !",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            currentAccountPicture: CircleAvatar(
              backgroundColor: const Color.fromARGB(255, 201, 179, 72),
              child: Container(
                width: 200.0,
                height: 200.0,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      "assets/imgs/donateur.jpg",
                    ),
                  ),
                ),
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.volunteer_activism),
            title: const Text('Faire un don'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => const ScreenDon()));
            },
          ),
          ListTile(
            leading: Icon(Icons.stars),
            title: const Text('Galerie de l’excellence'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.help),
            title: const Text('Foire à questions'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (_) => const ScreenDonFaq()));
            },
          ),
          ListTile(
            leading: Icon(Icons.policy),
            title: const Text('Mentions légales'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (_) => const ScreenDonPrivacy()));
            },
          ),
          ListTile(
            leading: Icon(Icons.perm_phone_msg),
            title: const Text('Assistance'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (_) => const ScreenDonAssistance()));
            },
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: const Text('Quitter'),
            onTap: () => showDialog(
              context: context,
              builder: (context) => AlertDialog(
                title: const Text("Quitter l'application"),
                content:
                    const Text("Voulez-vous vraiment quitter l'application"),
                actions: [
                  ElevatedButton(
                    onPressed: () => exit(0),
                    child: const Text('Oui'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text('Non'),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }*/
}
