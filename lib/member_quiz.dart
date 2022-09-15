import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:beneduca/button_widget.dart';
import 'package:beneduca/member_home.dart';

class ScreenMemberQuiz extends StatefulWidget {
  const ScreenMemberQuiz({Key? key}) : super(key: key);

  @override
  State<ScreenMemberQuiz> createState() => _ScreenMemberQuizState();
}

class _ScreenMemberQuizState extends State<ScreenMemberQuiz> {
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
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(15),
                  image: const DecorationImage(
                    image: AssetImage("assets/imgs/first_screen_students.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Je relève le défi !",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Question 1 : Le lorem ipsum est, en imprimerie ?",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Form(
                child: Column(
                  children: [
                    Form(
                      child: Column(
                        children: [
                          _reponseField(),
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

  Widget _reponseField() {
    return TextFormField(
      keyboardType: TextInputType.text,
      autocorrect: false,
      decoration: const InputDecoration(
        labelText: 'Réponse',
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
