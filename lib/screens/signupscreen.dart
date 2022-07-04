import 'package:flutter/material.dart';
import 'package:zq/reusable/reuseable_component.dart';
import 'package:zq/utils/colors_utils.dart';
import 'camscanner.dart';
import 'home_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController _passwordTextController = TextEditingController();
  final TextEditingController _emailTextController = TextEditingController();
  final TextEditingController _userNameTextController = TextEditingController();
  final TextEditingController _idTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: const Text(
            "Sign Up",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
        body: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  hexStringToColor("031B88"),
                  hexStringToColor("6096FD"),
                  hexStringToColor("AAB6FB"),
                ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
            child: SingleChildScrollView(
                child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 120, 20, 0),
                    child: Column(children: <Widget>[
                      const SizedBox(
                        height: 20,
                      ),
                      reusableTextField("User Name", Icons.person_outline, false,
                          _userNameTextController),
                      const SizedBox(
                        height: 20,
                      ),
                      reusableTextField("ID", Icons.person_outline, false,
                          _idTextController),
                      const SizedBox(
                        height: 20,
                      ),
                      reusableTextField("Email", Icons.person_outline, false,
                          _emailTextController),
                      const SizedBox(
                        height: 20,
                      ),
                      reusableTextField("Password", Icons.lock_outlined, true,
                          _passwordTextController),
                      const SizedBox(
                        height: 20,
                      ),
                      firebaseUIButton(context, "Sign UP", () {
                        userRegister(
                          name: _userNameTextController.text,
                          email: _emailTextController.text,
                          password: _passwordTextController.text,
                          id: _idTextController.text,
                        ).then((value) {
                          print('your Account Created');
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                  builder: (context)=> const CamScanner() ),
                                  (route) => false);
                        }).onError((error, stackTrace) {
                          print("Error ${error.toString()}");
                        });
                      })
                    ])))));
  }
}