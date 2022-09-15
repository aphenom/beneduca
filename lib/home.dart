import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:beneduca/button_widget.dart';
import 'package:beneduca/screen_two.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
                  "Titre",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Le lorem ipsum est, en imprimerie, une suite de mots sans signification utilisée à titre provisoire pour calibrer une mise en page, le texte définitif venant remplacer le faux-texte dès qu'il est prêt ou que la mise en page est achevée. Généralement, on utilise un texte en faux latin",
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
                          _emailField(),
                          const SizedBox(
                            height: 10,
                          ),
                          RadioListTile(
                            title: const Text("Homme"),
                            value: "male",
                            groupValue: gender,
                            onChanged: (value) {
                              setState(() {
                                gender = value.toString();
                              });
                            },
                          ),
                          RadioListTile(
                            title: const Text("Femme"),
                            value: "female",
                            groupValue: gender,
                            onChanged: (value) {
                              setState(() {
                                gender = value.toString();
                              });
                            },
                          ),
                          Row(
                            children: [
                              Transform.scale(
                                scale: 1.3,
                                child: Checkbox(
                                    value: isCheck,
                                    onChanged: (value) {
                                      setState(() {
                                        isCheck = !isCheck;
                                      });
                                    }),
                              ),
                              const Text(
                                "Accepter les conditions",
                                style: TextStyle(fontSize: 18.0),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          _alertBtn(),
                          const SizedBox(
                            height: 15,
                          ),
                          const CallToAction(
                            callToAction: ScreenTwo(),
                            txtBtn: "Ok Compris !",
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: const Text(
                "KLA Amos",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              accountEmail: const Text(
                "amosk.consulting@gmail.com",
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
                        "assets/imgs/pp-atlas.jpg",
                      ),
                    ),
                  ),
                ),
              ),
            ),
            ListTile(
              title: const Text('Item 1'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Item 2'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Item 3'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Item 4'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Item 5'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
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

  Widget _alertBtn() {
    return ElevatedButton(
      onPressed: () => showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('Alert diag'),
          content: const Text('Lorem ipsum '),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Continue'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Go Back'),
            )
          ],
        ),
      ),
      child: const Opacity(
        opacity: 1,
        child: Text(
          "Alert",
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
        primary: const Color.fromARGB(255, 91, 59, 4),
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
