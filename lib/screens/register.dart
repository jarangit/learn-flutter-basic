import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Register Screen"),
        ),
        body: Padding(
          padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
          child: Container(
            child: Form(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Email"),
                TextFormField(),
                Text("Password"),
                TextFormField(),
                SizedBox(
                  width: double.infinity,
                  child:
                      ElevatedButton(onPressed: () {}, child: Text("Submit")),
                )
              ],
            )),
          ),
        ));
  }
}
