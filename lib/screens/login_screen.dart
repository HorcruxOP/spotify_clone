import 'package:flutter/material.dart';
import 'package:spotify_clone/functions/auth_functions.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  bool isLogin = false;
  String email = "";
  String password = "";
  String username = "";
  String error = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Container(
          margin: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              !isLogin
                  ? TextFormField(
                      style: const TextStyle(color: Colors.white),
                      decoration: const InputDecoration(
                        hintText: "Enter Username",
                        hintStyle: TextStyle(color: Colors.white),
                      ),
                      key: const ValueKey("username"),
                      validator: (value) {
                        if (value.toString().length < 3) {
                          return "Username is so small";
                        } else {
                          return null;
                        }
                      },
                      onSaved: (value) {
                        setState(() {
                          username = value!;
                        });
                      },
                    )
                  : Container(),
              TextFormField(
                style: const TextStyle(color: Colors.white),
                decoration: const InputDecoration(
                  hintText: "Enter Email",
                  hintStyle: TextStyle(color: Colors.white),
                ),
                key: const ValueKey("email"),
                validator: (value) {
                  if (!(value.toString().contains("@"))) {
                    return "Invalid Email";
                  } else {
                    return null;
                  }
                },
                onSaved: (value) {
                  setState(() {
                    email = value!;
                  });
                },
              ),
              TextFormField(
                style: const TextStyle(color: Colors.white),
                decoration: const InputDecoration(
                  hintText: "Enter Password",
                  hintStyle: TextStyle(color: Colors.white),
                ),
                key: const ValueKey("password"),
                validator: (value) {
                  if (value.toString().length < 6) {
                    return "Password is so small";
                  } else {
                    return null;
                  }
                },
                onSaved: (value) {
                  setState(() {
                    password = value!;
                  });
                },
              ),
              const SizedBox(height: 10),
              Container(
                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
                      isLogin
                          ? signIn(email, password)
                          : signUp(email, password);
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromRGBO(29, 185, 84, 1),
                    shape: const ContinuousRectangleBorder(),
                  ),
                  child: Text(
                    !isLogin ? "SignUp" : "LogIn",
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              TextButton(
                onPressed: () {
                  setState(() {
                    isLogin = !isLogin;
                  });
                },
                child: Text(
                  !isLogin
                      ? "Already Signed Up? Login"
                      : "Don't have an account? Signup",
                  style: const TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
