import 'package:flutter/material.dart';
import 'forgot_password.dart';
import 'register.dart';
import 'home_page.dart';

class loginPage extends StatefulWidget {
  loginPage({Key? key}) : super(key: key);

  @override
  _loginPageState createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  bool _remembered = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 2.0, vertical: 10.0),
                child: TextField(
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    hintText: "Email",
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 2.0, vertical: 10.0),
                child: TextField(
                  textInputAction: TextInputAction.done,
                  decoration: InputDecoration(
                    hintText: "Password",
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 2.0, vertical: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Checkbox(
                            value: _remembered,
                            onChanged: (bool? value) {
                              setState(() {
                                _remembered = value!;
                              });
                            },
                          ),
                          Text("Remember Me")
                        ],
                      ),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => forgotPassword(),
                            ),
                          );
                        },
                        child: Text("Forgot Password"))
                  ],
                ),
              ),
              Container(
                child: Center(
                  child: TextButton(
                    child: Text(
                      "Login",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => homePage(),
                        ),
                      );
                    },
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all<EdgeInsets>(
                        EdgeInsets.symmetric(
                          horizontal: 100,
                          vertical: 20,
                        ),
                      ),
                      backgroundColor: MaterialStateProperty.all(Colors.blue),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Center(
                child: Container(
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => registerPage(),
                        ),
                      );
                    },
                    child: Text(
                      "Register",
                      style: TextStyle(
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
