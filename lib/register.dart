import 'package:flutter/material.dart';
import 'package:gbyte_ticket_app/login.dart';

class registerPage extends StatelessWidget {
  const registerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Register"),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(10.0),
            child: Column(
              children: [
                Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 2.0, vertical: 10.0),
                  child: TextField(
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      hintText: "Name",
                    ),
                  ),
                ),
                Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 2.0, vertical: 10.0),
                  child: TextField(
                    textInputAction: TextInputAction.done,
                    decoration: InputDecoration(
                      hintText: "Surname",
                    ),
                  ),
                ),
                Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 2.0, vertical: 10.0),
                  child: TextField(
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      hintText: "Company Name",
                    ),
                  ),
                ),
                Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 2.0, vertical: 10.0),
                  child: TextField(
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      hintText: "Branch Name",
                    ),
                  ),
                ),
                Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 2.0, vertical: 10.0),
                  child: TextField(
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      hintText: "Phone No.",
                    ),
                  ),
                ),
                Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 2.0, vertical: 10.0),
                  child: TextField(
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      hintText: "Email",
                    ),
                  ),
                ),
                Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 2.0, vertical: 10.0),
                  child: TextField(
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      hintText: "Address",
                    ),
                  ),
                ),
                Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 2.0, vertical: 10.0),
                  child: TextField(
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      hintText: "City",
                    ),
                  ),
                ),
                Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 2.0, vertical: 10.0),
                  child: TextField(
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      hintText: "Region",
                    ),
                  ),
                ),
                Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 2.0, vertical: 10.0),
                  child: TextField(
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      hintText: "Username",
                    ),
                  ),
                ),
                Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 2.0, vertical: 10.0),
                  child: TextField(
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      hintText: "Password",
                    ),
                  ),
                ),
                Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 2.0, vertical: 10.0),
                  child: TextField(
                    textInputAction: TextInputAction.done,
                    decoration: InputDecoration(
                      hintText: "Repeat Password",
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
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
                      onPressed: () {
                        Navigator.pop(context);
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
                  height: 20.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
