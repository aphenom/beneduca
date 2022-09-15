import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:beneduca/button_widget.dart';
import 'package:beneduca/member_home.dart';

class ScreenMemberRetrait extends StatefulWidget {
  const ScreenMemberRetrait({Key? key}) : super(key: key);

  @override
  State<ScreenMemberRetrait> createState() => _ScreenMemberRetraitState();
}

class _ScreenMemberRetraitState extends State<ScreenMemberRetrait> {
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
              const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Effectuer un retrait",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Form(
                child: Column(
                  children: [
                    Form(
                      child: Column(
                        children: [
                          _contactField(),
                          const SizedBox(
                            height: 10,
                          ),
                          _montantField(),
                          const SizedBox(
                            height: 10,
                          ),
                          const CallToAction(
                            callToAction: ScreenMember(),
                            txtBtn: "Valider",
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 150,
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(15),
                  image: const DecorationImage(
                    image: AssetImage("assets/imgs/promo-momo-2.jpg"),
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

  Widget _contactField() {
    return TextFormField(
      keyboardType: TextInputType.phone,
      readOnly: true,
      autocorrect: false,
      initialValue: "+2250505060708",
      decoration: const InputDecoration(
        labelText: 'Contact',
        hintText: "",
        hintStyle: TextStyle(
          color: Color(0xff7C7C7C),
          fontSize: 18,
        ),
        labelStyle: TextStyle(
          color: Color(0xff7C7C7C),
          fontSize: 17,
        ),
      ),
    );
  }

  Widget _montantField() {
    return TextFormField(
      keyboardType: TextInputType.number,
      autocorrect: false,
      decoration: const InputDecoration(
        labelText: 'Montant',
        hintText: "",
        hintStyle: TextStyle(
          color: Color(0xff7C7C7C),
          fontSize: 18,
        ),
        labelStyle: TextStyle(
          color: Color(0xff7C7C7C),
          fontSize: 17,
        ),
      ),
    );
  }
}
