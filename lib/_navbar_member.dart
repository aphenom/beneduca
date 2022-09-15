import 'package:flutter/material.dart';
import 'package:beneduca/don_assistance.dart';
import 'package:beneduca/member_home.dart';
import 'package:beneduca/member_recompenses.dart';
import 'package:beneduca/member_concours.dart';
import 'package:beneduca/member_profile.dart';
import 'package:beneduca/member_faq.dart';
import 'package:beneduca/member_privacy.dart';
import 'package:beneduca/member_assistance.dart';
import 'package:beneduca/screen_two.dart';
import 'dart:io';

class NavBarMember extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
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
              "Je relève le défi de l’excellence !",
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
            leading: Icon(Icons.home),
            title: const Text('Tableau de bord'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (_) => const ScreenMember()));
            },
          ),
          ListTile(
            leading: Icon(Icons.school),
            title: const Text('Concours'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (_) => const ScreenMemberConcours()));
            },
          ),
          ListTile(
            leading: Icon(Icons.military_tech),
            title: const Text('Mes Récompenses'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (_) => const ScreenMemberRecompenses()));
            },
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: const Text('Mon profil'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (_) => const ScreenMemberProfile()));
            },
          ),
          /*ListTile(
            leading: Icon(Icons.settings),
            title: const Text('Mes paramètres'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (_) => const ScreenDonFaq()));
            },
          ),*/
          ListTile(
            leading: Icon(Icons.help),
            title: const Text('Foire à questions'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (_) => const ScreenMembreFaq()));
            },
          ),
          ListTile(
            leading: Icon(Icons.policy),
            title: const Text('Mentions légales'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (_) => const ScreenMemberPrivacy()));
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
                  builder: (_) => const ScreenMemberAssistance()));
            },
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: const Text('Déconnexion'),
            onTap: () => showDialog(
              context: context,
              builder: (context) => AlertDialog(
                title: const Text("Déconnecter le compte"),
                content: const Text("Voulez-vous vraiment vous déconnecter ?"),
                actions: [
                  ElevatedButton(
                    onPressed: () {
                      // Update the state of the app
                      // ...
                      // Then close the drawer
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (_) => const ScreenTwo()));
                    },
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
