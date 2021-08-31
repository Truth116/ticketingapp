import 'package:flutter/material.dart';
import 'package:gbyte_ticket_app/main.dart';

import 'settings.dart';
import 'contact.dart';
import 'add_tickets.dart';
import 'tickets_list.dart';

class homePage extends StatefulWidget {
  homePage({Key? key}) : super(key: key);

  @override
  _homePageState createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.arrow_drop_down),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications),
          ),
        ],
      ),
      drawer: customDrawer(context),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              height: MediaQuery.of(context).size.height,
              child: new ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: tickets.length,
                itemBuilder: (BuildContext context, int index) =>
                    listBuilder(context, index),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget customDrawer(BuildContext context) {
  return Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: [
        DrawerHeader(
          decoration: BoxDecoration(
            color: Colors.blue,
          ),
          child: Container(
            padding: EdgeInsets.only(bottom: 2.0, left: 2.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 35.0,
                  backgroundColor: Colors.black12,
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  "GigabyteLtd",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 15.0,
                    color: Colors.white,
                  ),
                ),
                Text(
                  "servis.gigabyteltd.com",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 10.0,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
        ),
        ListTile(
          leading: Icon(Icons.receipt),
          title: const Text('Tickets'),
          onTap: () {
            Navigator.pop(context);
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => homePage(),
              ),
            );
          },
        ),
        ListTile(
          leading: Icon(Icons.add_task),
          title: const Text('Add Tickets'),
          onTap: () {
            Navigator.pop(context);
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => addTickets(),
              ),
            );
          },
        ),
        Divider(
          height: 10.0,
        ),
        ListTile(
          leading: Icon(Icons.settings),
          title: const Text('Settings'),
          onTap: () {
            Navigator.pop(context);
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => settingsPage(),
              ),
            );
          },
        ),
        ListTile(
          leading: Icon(Icons.help_center_rounded),
          title: const Text('Contact Us'),
          onTap: () {
            Navigator.pop(context);
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => contactPage(),
              ),
            );
          },
        ),
        ListTile(
          leading: Icon(Icons.logout),
          title: const Text('Logout'),
          onTap: () {
            Navigator.pop(context);
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => MyApp(),
              ),
            );
          },
        ),
      ],
    ),
  );
}

Widget listBuilder(BuildContext context, int index) {
  return new Container(
    width: MediaQuery.of(context).size.width,
    padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
    child: Card(
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: Colors.black54,
          width: 2,
        ),
      ),
      elevation: 0.0,
      child: Container(
        padding: EdgeInsets.all(15.0),
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    tickets[index].date,
                    style: TextStyle(
                      fontSize: 10.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                children: [
                  Text(
                    tickets[index].type,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Row(
                      children: [
                        Text(
                          tickets[index].name,
                          style: TextStyle(
                            fontSize: 10.0,
                            fontWeight: FontWeight.w600,
                            color: Colors.black26,
                          ),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          tickets[index].level,
                          style: TextStyle(
                            fontSize: 10.0,
                            fontWeight: FontWeight.w600,
                            color: Colors.black26,
                          ),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          tickets[index].tech,
                          style: TextStyle(
                            fontSize: 10.0,
                            fontWeight: FontWeight.w600,
                            color: Colors.black26,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
