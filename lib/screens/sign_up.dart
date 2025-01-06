import 'package:flutter/material.dart';
import 'package:gramtora/tools/widgets.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: const EdgeInsets.all(8.0),
          alignment: Alignment.topCenter,
          child: Column(
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
              Stack(
                children: [
                  const CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage("assets/images/sans-image.png"),
                    backgroundColor: Colors.white,
                  ),
                  Positioned(
                      top: 25,
                      left: 25,
                      child: IconButton(
                          onPressed: () => {},
                          icon: const Icon(
                            Icons.add,
                            color: Colors.grey,
                          )))
                ],
              ),
              SizedBox(height: height * 0.05),
              Form(
                key: formKey,
                child: Column(
                  children: [
                    Widgets.textFormField("Name", (value) {}),
                    SizedBox(height: height * 0.03),
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
                  child: ElevatedButton(
                      onPressed: () => {}, child: Text("Sign up"))),
              TextButton(
                  onPressed: () => {}, child: Text("Do you have an account ?"))
            ],
          ),
        ),
      ),
    );
  }
}
