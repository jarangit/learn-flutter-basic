import 'package:flutter/material.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({super.key});

  @override
  State<MyLogin> createState() => _MyLoginState();
}

Future onLogin() async {
  var res = await loginSever();
  print(res);
}

Future<String> loginSever() {
  return Future.delayed(Duration(seconds: 5), () => "logged");
}

class _MyLoginState extends State<MyLogin> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: onLogin, child: const Text("Login"));
  }
}
