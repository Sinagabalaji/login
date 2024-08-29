import 'package:flutter/material.dart';
import 'package:login_12/forgot%20_/Forgot.dart';
import 'package:login_12/signin/Signin.dart';
import 'package:login_12/signup/signup.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    String email = "tony@starkindustries.com";

    final bool emailValid = RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(email);
    String password = "";

    void checkMail(String email) {
      // checks
    }

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink.shade500,
          leading: const Icon(Icons.home),
          title: const Text('Instagram'),
          actions: const [
            Icon(Icons.chat),
            SizedBox(width: 10.00),
            Icon(Icons.video_call),
            SizedBox(width: 10.00),
            Icon(Icons.call),
            SizedBox(width: 10.00),
          ],
          titleTextStyle: const TextStyle(
              color: Colors.white,
              backgroundColor: Colors.transparent,
              fontSize: 30,
              fontWeight: FontWeight.bold),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Container(
                padding: EdgeInsets.all(16),
                color: Colors.white,
                width: 320,
                child: Column(children: [
                  const Text(
                    'Sign In Page',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  const SizedBox(height: 30),
                  const Text(
                    'Welcome To sign Page',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  // const SizedBox(height: 30),
                  Container(
                    width: 100,
                    child: Image.asset(
                      'assets/images/instagram.jpg',
                    ),
                  ),
                  const SizedBox(height: 30),
                  TextField(
                    controller: emailcontroller,
                    autocorrect: true,
                    obscureText: false,
                    decoration: InputDecoration(
                        hintText: "Email",
                        labelText: 'Enter email',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.black))),
                  ),
                  SizedBox(height: 30),
                  TextField(
                    controller: passwordcontroller,
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: "Password",
                        labelText: 'Enter password',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.black))),
                  ),
                  SizedBox(height: 10),
                  Align(
                      alignment: Alignment.topRight,
                      child: TextButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => Forgot()));
                        },
                        child: Text(
                          'Forgot password?',
                        ),
                      )),
                  SizedBox(height: 10),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          checkMail(email);

                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => Signin()));
                        });
                      },
                      child: Text('Sign in')),
                  Row(
                    children: [
                      Text('Dont have account click here?'),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => Signup()));
                        },
                        child: Text("sign up"),
                      )
                    ],
                  ),
                ])),
          ),
        ));
  }
}
