import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:beneduca/_navbar_don.dart';

class ScreenDonFaq extends StatefulWidget {
  const ScreenDonFaq({Key? key}) : super(key: key);

  @override
  State<ScreenDonFaq> createState() => _ScreenDonFaqState();
}

class _ScreenDonFaqState extends State<ScreenDonFaq> {
  @override
  void initState() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive, overlays: []);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Foire aux questions"),
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
                            "Foire aux questions",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Quel est le but de cette collecte ?",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const Text(
                            "Le but de cette collecte de fonds est de permettre de pouvoir organiser des concours hebdomadaires portant sur les cours et/ou la culture générale à l'endroit des élèves et étudiants.es durant toute l'année l'année 2023 ; au sortir desquelles les meilleurs seront récompensés."),
                        const Text(
                          "Nous entendons ainsi avec votre concoure redonner le gôut de l'excellence aux élèves et étudiants.es afin de réhausser le système éducatif.",
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Le lorem ipsum ?",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const Text(
                          "Le lorem ipsum est, en imprimerie, une suite de mots sans signification utilisée à titre provisoire pour calibrer une mise en page, le texte définitif venant remplacer le faux-texte dès qu'il est prêt ou que la mise en page est achevée. Généralement, on utilise un texte en faux latin",
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Le lorem ipsum ?",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const Text(
                          "Le lorem ipsum est, en imprimerie, une suite de mots sans signification utilisée à titre provisoire pour calibrer une mise en page, le texte définitif venant remplacer le faux-texte dès qu'il est prêt ou que la mise en page est achevée. Généralement, on utilise un texte en faux latin",
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
}
