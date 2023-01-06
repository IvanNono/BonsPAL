import 'package:bonspal/controllers/MenuController.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

import '../../responsive.dart';
import 'logInDesktop.dart';
import 'logInMobile.dart';
import 'logInTablet.dart';
import 'package:provider/provider.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
        return Scaffold(
          key: context.read<MenuController>().scaffoldKey,
          body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // We want this side menu only for large screen
            if (Responsive.isMobile(context))
              Expanded(
                // default flex = 1
                // and it takes 1/6 part of the screen
                child: LoginMobile(),
              )
            else if(Responsive.isTablet(context))
              Expanded(
                // default flex = 1
                // and it takes 1/6 part of the screen
                child: LoginTablet(),
              )
            else
              Expanded(
                // default flex = 1
                // and it takes 1/6 part of the screen
                child: LoginDesktop(),
              )
          ],
        ),
      ),
    );
  }
}



/*
LayoutBuilder(
builder: (context, constraints) {
if (constraints.maxWidth < 600) {
return LoginMobile();
} else if (constraints.maxWidth > 600 && constraints.maxWidth < 900) {
return const LoginTablet();
} else {
return LoginDesktop();
}
},
),*/
