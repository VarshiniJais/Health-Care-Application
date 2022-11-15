import 'dart:async';
import 'package:src/blocs/auth/auth.bloc.dart';
import 'package:src/shared/custom_components.dart';
import 'package:src/shared/custom_style.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
class payment extends StatefulWidget 
{
  static const routeName = '/payment';
  @override
  PaymentState createState() => PaymentState();
}
class PaymentState extends State<payment> 
{
  bool isAdmin = false;
  @override
  Widget build(BuildContext context) {
    AuthBloc authBloc = AuthBloc();
    return new Scaffold(
    appBar: AppBar(title: const Text(cSOS)),
      drawer: Drawer(
          // Add a ListView to the drawer. This ensures the user can scroll
          // through the options in the drawer if there isn't enough vertical
          // space to fit everything.
          child: isAdmin
              // ? adminNav(context, authBloc)
              ? CustomAdminDrawer()
              : CustomGuestDrawer()),
        body: Center(
        child: Material(
          child: Container(
              margin: EdgeInsets.all(20.0),
              child: authBloc.isSignedIn()
                  ? sos_button(authBloc)
                  : sos_button(authBloc)),
        ),
      ),
    );
  }
  Widget (AuthBloc authBloc)
  {

  }
}