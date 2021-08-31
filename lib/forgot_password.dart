import 'package:flutter/material.dart';

class forgotPassword extends StatelessWidget {
  const forgotPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Forgot Password"),
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
                    hintText: "Username",
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 2.0, vertical: 10.0),
                child: TextField(
                  textInputAction: TextInputAction.done,
                  decoration: InputDecoration(
                    hintText: "Email",
                  ),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Container(
                child: Center(
                  child: TextButton(
                    child: Text(
                      "Submit",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {},
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
            ],
          ),
        ),
      ),
    );
  }
}
