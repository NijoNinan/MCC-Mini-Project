import 'package:classroom/screens/Authenticate/login.dart';
import 'package:classroom/screens/Authenticate/register.dart';
import 'package:flutter/material.dart';

class Authenticate extends StatefulWidget {
  @override
  _AuthenticateState createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {
  bool showRegister = false;
  void toggle_reg_log() {
    setState(() => showRegister = !showRegister);
  }

  @override
  Widget build(BuildContext context) {
    if (showRegister) {
      return Register(toggle_reg_log: toggle_reg_log);
    } else {
      return Login(toggle_reg_log: toggle_reg_log);
    }
  }
}
