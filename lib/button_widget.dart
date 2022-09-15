import 'package:flutter/material.dart';

class CallToAction extends StatefulWidget {
  final Widget callToAction;
  final String txtBtn;
  const CallToAction(
      {Key? key, required this.callToAction, required this.txtBtn})
      : super(key: key);

  @override
  State<CallToAction> createState() => _CallToActionState();
}

class _CallToActionState extends State<CallToAction> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (_) => widget.callToAction));
      },
      child: Opacity(
        opacity: 1,
        child: Text(
          widget.txtBtn.toString(),
          style: const TextStyle(
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
