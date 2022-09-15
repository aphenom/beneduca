import 'package:flutter/material.dart';
import 'package:beneduca/button_widget.dart';
import 'package:beneduca/member_home.dart';
import 'package:beneduca/leading_card.dart';
import 'package:flutter/services.dart';

class ScreenTwo extends StatefulWidget {
  const ScreenTwo({Key? key}) : super(key: key);

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> with TickerProviderStateMixin {
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
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text("Identification"),
        backgroundColor: Colors.amber,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const LeadingCard(),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 40,
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(
                  10.0,
                ),
              ),
              child: TabBar(
                controller: _controller,
                // give the indicator a decoration (color and border radius)
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    10.0,
                  ),
                  color: Colors.black,
                ),
                labelColor: Colors.white,
                unselectedLabelColor: const Color(0xff848383),
                tabs: const [
                  // first tab [you can add an icon using the icon property]
                  Tab(
                    child: Opacity(
                      opacity: 1,
                      child: Text(
                        "Connexion",
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
                        "Inscription",
                        style: TextStyle(
                          color: Color(0xffF8F9FA),
                          fontSize: 15.0,
                          letterSpacing: .29,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  Form(
                      child: Column(
                    children: [
                      Form(
                          child: Column(
                        children: [
                          _emailField(),
                          _passwordField(),
                          const SizedBox(
                            height: 10,
                          ),
                          const CallToAction(
                            callToAction: ScreenMember(),
                            txtBtn: "Se connecter",
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                            height: 150,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade200,
                              borderRadius: BorderRadius.circular(15),
                              image: const DecorationImage(
                                image:
                                    AssetImage("assets/imgs/MTN-MoMoPay.png"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ))
                    ],
                  )),
                  SingleChildScrollView(
                      child: Column(
                    children: [
                      Form(
                          child: Column(
                        children: [
                          _nomField(),
                          _prenomField(),
                          _emailField(),
                          _passwordField(),
                          _ecoleField(),
                          _matriculeField(),
                          _niveauField(),
                          _numeroField(),
                          const SizedBox(
                            height: 10,
                          ),
                          const CallToAction(
                            callToAction: ScreenMember(),
                            txtBtn: "S'inscrire",
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                            height: 150,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade200,
                              borderRadius: BorderRadius.circular(15),
                              image: const DecorationImage(
                                image:
                                    AssetImage("assets/imgs/MTN-MoMoPay.png"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ))
                    ],
                  )),
                ],
                controller: _controller,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _emailField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      autocorrect: false,
      decoration: const InputDecoration(
        labelText: 'Email',
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

  Widget _nomField() {
    return TextFormField(
      keyboardType: TextInputType.text,
      autocorrect: false,
      decoration: const InputDecoration(
        labelText: 'Nom',
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

  Widget _prenomField() {
    return TextFormField(
      keyboardType: TextInputType.text,
      autocorrect: false,
      decoration: const InputDecoration(
        labelText: 'Prénom(s)',
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

  Widget _ecoleField() {
    return TextFormField(
      keyboardType: TextInputType.text,
      autocorrect: false,
      decoration: const InputDecoration(
        labelText: 'Ecole',
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

  Widget _niveauField() {
    return TextFormField(
      keyboardType: TextInputType.text,
      autocorrect: false,
      decoration: const InputDecoration(
        labelText: 'Niveau Scolaire',
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

  Widget _matriculeField() {
    return TextFormField(
      keyboardType: TextInputType.text,
      autocorrect: false,
      decoration: const InputDecoration(
        labelText: 'Matricule national',
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

  Widget _numeroField() {
    return TextFormField(
      keyboardType: TextInputType.phone,
      autocorrect: false,
      decoration: const InputDecoration(
        labelText: 'Numéro',
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

  Widget _phoneField() {
    return TextFormField(
      keyboardType: TextInputType.phone,
      autocorrect: false,
      decoration: const InputDecoration(
        hintText: 'Numéro',
        floatingLabelAlignment: FloatingLabelAlignment.center,
        prefixIcon: Icon(Icons.phone_iphone_rounded),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(50.0),
          ),
          borderSide: BorderSide(
            color: Color(0x0fd3d3d3),
          ),
        ),
      ),
    );
  }

  Widget _passwordField() {
    return TextFormField(
      keyboardType: TextInputType.visiblePassword,
      obscureText: true,
      obscuringCharacter: '•',
      autocorrect: false,
      decoration: InputDecoration(
        labelText: 'Mot de passe',
        hintText: "",
        hintStyle: const TextStyle(
          color: Color(0xff7C7C7C),
          fontSize: 18,
        ),
        labelStyle: const TextStyle(
          color: Color(0xff7C7C7C),
          fontSize: 17,
        ),
        suffixIcon: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.visibility),
        ),
      ),
    );
  }

  Widget _registerButton() {
    return ElevatedButton(
      onPressed: () {
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (_) => const ScreenMember()));
      },
      child: const Opacity(
        opacity: 1,
        child: Text(
          "Connexion",
          style: TextStyle(
            fontSize: 18.0,
            fontFamily: "Century Gothic",
            fontWeight: FontWeight.w500,
            color: Colors.white,
            letterSpacing: .35,
          ),
        ),
      ),
      style: ElevatedButton.styleFrom(
        primary: Colors.amber,
        onPrimary: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        minimumSize: const Size(
          double.infinity,
          60,
        ),
        textStyle: const TextStyle(
          fontSize: 20,
        ),
      ),
    );
  }
}
