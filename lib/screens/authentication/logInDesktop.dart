import 'package:bonspal/constants.dart';
import 'package:bonspal/controllers/MenuController.dart';
import 'package:bonspal/screens/dashboard/dashboard_screen.dart';
import 'package:bonspal/screens/main/main_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'labeledCheckBox.dart';

class LoginDesktop extends StatefulWidget {
  @override
  _LoginDesktopState createState() => _LoginDesktopState();
}

class _LoginDesktopState extends State<LoginDesktop> {
  bool _isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      key: context.read<MenuController>().scaffoldKey,
      body: Row(
        children: [
          Expanded(
              child: Image.asset(
                'assets/images/port.png',
                fit: BoxFit.cover,
              )),
          Expanded(
            child: Container(
              color: Colors.white,
              constraints: const BoxConstraints(maxWidth: 21),
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Welcome back',
                    style: GoogleFonts.inter(
                      fontSize: 17,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Login to your account',
                    style: GoogleFonts.inter(
                      fontSize: 23,
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 35),
                  TextField(
                    onChanged: (_){},
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: primaryColor
                            ),
                            borderRadius: BorderRadius.circular(10),
                        )
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextField(
                    onChanged: (_){},
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: primaryColor
                          ),
                          borderRadius: BorderRadius.circular(10)
                        )
                    ),
                  ),
                  const SizedBox(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Wrap(
                        direction: Axis.horizontal,
                        children: [
                          Checkbox(
                            value: true,
                            onChanged: null,
                            checkColor: primaryColor,
                            side: BorderSide(
                              color: primaryColor
                            ),
                          ),
                          Column(
                            children: [
                              SizedBox(height: 6,),
                              Text('Rester connecté',
                                style: GoogleFonts.inter(
                                  fontSize: 17,
                                  color: primaryColor,
                                ),),
                            ],
                          )
                        ],
                      ),
                      InkWell(
                        onTap: null,
                        child: Text(
                          'Mot de passe oublié ?',
                          style: GoogleFonts.inter(
                              fontSize: 17,
                              color: primaryColor,
                          ),
                        )
                      )
                    ],
                  ),
                  const SizedBox(height: 30),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => MainScreen()),
                        );
                      },                  child: Text('Connexion',
                      style: GoogleFonts.inter(
                          color: Colors.white,
                      ),
                    ),
                    style: TextButton.styleFrom(backgroundColor: Colors.green)
                  ),
                  const SizedBox(height: 15),
                  TextButton(
                    onPressed: () { MainScreen(); },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        /*Image.asset(
                          'assets/images/google.png',
                          fit: BoxFit.cover,
                        ),*/
                        Text('Continuer avec Google',
                            style: GoogleFonts.inter(
                              color: Colors.white,
                            ),
                        ),
                      ],
                    ),
                    style: TextButton.styleFrom(backgroundColor: Colors.black),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}