import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:beneduca/_navbar_member.dart';

class ScreenMembreFaq extends StatefulWidget {
  const ScreenMembreFaq({Key? key}) : super(key: key);

  @override
  State<ScreenMembreFaq> createState() => _ScreenMembreFaqState();
}

class _ScreenMembreFaqState extends State<ScreenMembreFaq> {
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
                    image: AssetImage("assets/imgs/promo-momo-2.jpg"),
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
                            "Le lorem ipsum ?",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const Text(
                          "Le lorem ipsum est, en imprimerie, une suite de mots sans signification utilis??e ?? titre provisoire pour calibrer une mise en page, le texte d??finitif venant remplacer le faux-texte d??s qu'il est pr??t ou que la mise en page est achev??e. G??n??ralement, on utilise un texte en faux latin",
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
                          "Le lorem ipsum est, en imprimerie, une suite de mots sans signification utilis??e ?? titre provisoire pour calibrer une mise en page, le texte d??finitif venant remplacer le faux-texte d??s qu'il est pr??t ou que la mise en page est achev??e. G??n??ralement, on utilise un texte en faux latin",
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
                          "Le lorem ipsum est, en imprimerie, une suite de mots sans signification utilis??e ?? titre provisoire pour calibrer une mise en page, le texte d??finitif venant remplacer le faux-texte d??s qu'il est pr??t ou que la mise en page est achev??e. G??n??ralement, on utilise un texte en faux latin",
                        ),
                      ],
                    ),
                  )),
            ],
          ),
        ),
      ),
      drawer: NavBarMember(),
    );
  }
}
