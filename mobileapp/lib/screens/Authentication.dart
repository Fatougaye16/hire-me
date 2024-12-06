import 'package:flutter/material.dart';
import 'package:mobileapp/widgets/shared/AuthenticationForm.dart';
import 'package:mobileapp/widgets/shared/Header.dart';

class AuthenticationScreen extends StatefulWidget {
  @override
  _AuthenticationScreenState createState() => _AuthenticationScreenState();
}

class _AuthenticationScreenState extends State<AuthenticationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Header(),
      body: const AuthenticationForm(),
    );
  }
}
