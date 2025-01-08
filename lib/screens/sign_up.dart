import 'package:flutter/material.dart';
import 'package:gramtora/screens/login.dart';
import 'package:gramtora/tools/widgets.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final formKey = GlobalKey<FormState>();
  TextEditingController emailController = new TextEditingController();

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
                    Widgets.textFormField("Name", validateField),
                    SizedBox(height: height * 0.03),
                    Widgets.textFormField(
                        "Email", validateField, null, emailController),
                    SizedBox(height: height * 0.03),
                    Widgets.textFormField(
                        "Password", validateField, Icon(Icons.visibility_off)),
                  ],
                ),
              ),
              SizedBox(height: height * 0.05),
              SizedBox(
                  height: height * 0.05,
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {
                        formKey.currentState!.save();
                        if (formKey.currentState!.validate()) {}
                      },
                      child: Text("Sign up"))),
              TextButton(
                  onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Login()),
                      ),
                  child: Text("Do you have an account ?"))
            ],
          ),
        ),
      ),
    );
  }

  String? validateField(value) {
    if (value.isEmpty || value == null) {
      return "This field is required.";
    }

    if (value == emailController.text && !value.contains('@')) {
      return "Please enter a valid email.";
    }
    return null;
  }
}
