import 'package:flutter/material.dart';
import 'package:my_app/screens/login.dart';
import 'package:my_app/screens/register.dart';

class IndexLogin extends StatefulWidget {
  const IndexLogin({super.key});

  @override
  State<IndexLogin> createState() => _IndexLoginState();
}

class _IndexLoginState extends State<IndexLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: (AppBar(
          title: Text("Index login"),
        )),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
          child: Column(
            children: [
              Image.asset("assets/images/image1.jpeg"),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RegisterScreen()));
                  },
                  icon: Icon(Icons.create),
                  label: Text("Register"),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginScreen()));
                  },
                  icon: Icon(Icons.login),
                  label: Text("Login"),
                ),
              ),
            ],
          ),
        ));
  }
}
