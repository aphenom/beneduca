import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:beneduca/button_widget.dart';
import 'package:beneduca/_navbar_member.dart';
import 'package:beneduca/member_home.dart';

class ScreenMemberAssistance extends StatefulWidget {
  const ScreenMemberAssistance({Key? key}) : super(key: key);

  @override
  State<ScreenMemberAssistance> createState() => _ScreenMemberAssistanceState();
}

class _ScreenMemberAssistanceState extends State<ScreenMemberAssistance> {
  String? gender;
  bool isCheck = false;
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
                    image: AssetImage("assets/imgs/promo-momo-2.jpg"),
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
                  "Nous contacer",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Text(
                  "Veuillez utiliser le formulaire ci-dessous pour nous envoyer un message"),
              const SizedBox(
                height: 5,
              ),
              Form(
                child: Column(
                  children: [
                    Form(
                      child: Column(
                        children: [
                          _nomField(),
                          const SizedBox(
                            height: 10,
                          ),
                          _contactField(),
                          const SizedBox(
                            height: 10,
                          ),
                          _objetField(),
                          const SizedBox(
                            height: 10,
                          ),
                          _messageField(),
                          const SizedBox(
                            height: 10,
                          ),
                          const CallToAction(
                            callToAction: ScreenMember(),
                            txtBtn: "Envoyer",
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Service commercial : +225 0505010203",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Service technique : +225 0505040506",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      drawer: NavBarMember(),
    );
  }

  Widget _nomField() {
    return TextFormField(
      keyboardType: TextInputType.text,
      autocorrect: false,
      decoration: const InputDecoration(
        labelText: 'Nom et prénom(s)',
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

  Widget _contactField() {
    return TextFormField(
      keyboardType: TextInputType.phone,
      autocorrect: false,
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

  Widget _objetField() {
    return TextFormField(
      keyboardType: TextInputType.text,
      autocorrect: false,
      decoration: const InputDecoration(
        labelText: 'Sujet',
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

  Widget _messageField() {
    return TextField(
      maxLines: 4, //or null
      decoration:
          InputDecoration.collapsed(hintText: "Entrez votre message ici !"),
    );
  }
}
