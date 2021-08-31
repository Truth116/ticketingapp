import 'package:flutter/material.dart';
import 'home_page.dart';

class addTickets extends StatelessWidget {
  const addTickets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Tickets"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.attach_file),
          ),
        ],
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
                      hintText: "Technician Grade",
                    ),
                  ),
                ),
                Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 2.0, vertical: 10.0),
                  child: TextField(
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      hintText: "Ticket Urgency",
                    ),
                  ),
                ),
                Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 2.0, vertical: 10.0),
                  child: TextField(
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      hintText: "Request",
                    ),
                  ),
                ),
                Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 2.0, vertical: 10.0),
                  child: TextField(
                    textInputAction: TextInputAction.done,
                    decoration: InputDecoration(
                      hintText: "Description",
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
