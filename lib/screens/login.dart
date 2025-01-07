import 'package:flutter/material.dart';
import 'package:gramtora/screens/sign_up.dart';
import 'package:gramtora/tools/widgets.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: height * 0.1),
            const Text(
              "Gramtora",
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            SizedBox(height: height * 0.05),
            Form(
              key: formKey,
              child: Column(
                children: [
                  Widgets.textFormField("Email", (value) {}),
                  SizedBox(height: height * 0.03),
                  Widgets.textFormField(
                      "Password", (value) {}, Icon(Icons.visibility_off)),
                ],
              ),
            ),
            SizedBox(height: height * 0.05),
            SizedBox(
                height: height * 0.05,
                width: double.infinity,
                child:
                    ElevatedButton(onPressed: () => {}, child: Text("Login"))),
            TextButton(
                onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignUp()),
                    ),
                child: Text("Sign up"))
          ],
        ),
      ),
    ));
  }
}
