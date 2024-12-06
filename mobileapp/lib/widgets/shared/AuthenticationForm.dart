import 'package:flutter/material.dart';

class AuthenticationForm extends StatefulWidget {
  const AuthenticationForm({super.key});

  @override
  _AuthenticationFormState createState() => _AuthenticationFormState();
}

class _AuthenticationFormState extends State<AuthenticationForm> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(16),
        child: Form(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 24),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.
              children: [
                const Text(
                  'Log In',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                TextFormField(
                  decoration:
                      const InputDecoration(labelText: 'Username/Email'),
                ),
                TextFormField(
                  decoration: const InputDecoration(labelText: 'Password'),
                ),
                ElevatedButton(
                  onPressed: () => {},
                  child: const Text('Sign In'),
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.grey)),
                )
              ],
            ),
          ),
        ));
  }
}
