import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:beneduca/button_widget.dart';
import 'package:beneduca/don_home.dart';

class ScreenDonPayment extends StatefulWidget {
  const ScreenDonPayment({Key? key}) : super(key: key);

  @override
  State<ScreenDonPayment> createState() => _ScreenDonPaymentState();
}

class _ScreenDonPaymentState extends State<ScreenDonPayment> {
  @override
  void initState() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive, overlays: []);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("J'effectue un don"),
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
              SizedBox(
                height: 10,
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
                            "J'effectue un don",
                            style: TextStyle(
                              fontSize: 25,
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
                                    _montantField(),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    const CallToAction(
                                      callToAction: ScreenDon(),
                                      txtBtn: "Payer",
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 150,
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(15),
                  image: const DecorationImage(
                    image: AssetImage("assets/imgs/promo-momo-vendredi.jpg"),
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
