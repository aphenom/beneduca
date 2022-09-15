import 'package:flutter/material.dart';
import 'package:beneduca/don_home.dart';
import 'package:beneduca/don_faq.dart';
import 'package:beneduca/don_privacy.dart';
import 'package:beneduca/don_assistance.dart';
import 'package:beneduca/don_concours.dart';
import 'dart:io';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (_) => const ScreenDonConcours()));
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
            leading: Icon(Icons.power_settings_new),
            title: const Text('Quitter'),
            onTap: () => showDialog(
              context: context,
              builder: (context) => AlertDialog(
                title: const Text("Quitter l'application"),
                content:
                    const Text("Voulez-vous vraiment quitter l'application ?"),
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
    ;
  }
}
