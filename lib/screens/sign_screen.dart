import 'package:flutter/material.dart';
import 'package:referapp/controllers/auth_controller.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SignScreen extends StatefulWidget {
  const SignScreen({Key? key}) : super(key: key);

  @override
  State<SignScreen> createState() => _SignScreenState();
}

class _SignScreenState extends State<SignScreen> {
  final _formKey = GlobalKey<FormState>();

  String name = "";

  String email = "";

  String password = "";

  bool isLogin = true;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Form(
              key: _formKey,
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("Welcome",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold)),
                  ),
                  if (!isLogin)
                    Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: TextFormField(
                        decoration: const InputDecoration(
                            labelText: 'Name',
                            border: OutlineInputBorder(),
                            errorBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.red, width: 2))),
                        keyboardType: TextInputType.text,
                        initialValue: name,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter your name';
                          }
                        },
                        onChanged: (value) {
                          name = value;
                          print(name);
                        },
                      ),
                    ),
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: TextFormField(
                      decoration: const InputDecoration(
                          labelText: 'Enter email',
                          border: OutlineInputBorder(),
                          errorBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.red, width: 2))),
                      keyboardType: TextInputType.emailAddress,
                      initialValue: email,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter your email';
                        }
                      },
                      onChanged: (value) {
                        email = value;
                        print(email);
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: TextFormField(
                      decoration: const InputDecoration(
                          labelText: 'Enter password',
                          border: OutlineInputBorder(),
                          errorBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.red, width: 2))),
                      keyboardType: TextInputType.text,
                      initialValue: password,
                      obscureText: true,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter your password';
                        }
                      },
                      onChanged: (value) {
                        password = value;
                        print(password);
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () async {
                      if (isLogin) {
                        AuthController.instance.signIn(email, password);
                      } else {
                        AuthController.instance.register(email, password);
                        final SharedPreferences sharedPreferences =
                            await SharedPreferences.getInstance();
                        sharedPreferences.setString("name", name);
                      }
                      // }
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(12)),
                      width: 150,
                      height: 50,
                      child: Center(
                        child: Text(
                          isLogin ? "Login" : "Signup",
                          style: const TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                      onTap: () {
                        setState(() {
                          name = "";
                          email = "";
                          password = "";
                          isLogin = !isLogin;
                        });
                      },
                      child: SizedBox(
                        height: 50,
                        width: size.width * 0.8,
                        child: Center(
                          child: Text(
                            isLogin
                                ? "Already have an account?Login here"
                                : "Not registered yet?Signup here",
                            style: TextStyle(
                                color: Colors.grey.shade500,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                        ),
                      ))
                ],
              )),
        ),
      ),
    );
  }
}
