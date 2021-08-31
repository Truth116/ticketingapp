import 'package:flutter/material.dart';
import 'home_page.dart';

class contactPage extends StatelessWidget {
  const contactPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
      ),
      body: Center(
        child: Container(
          child: Text("Contact placeholder"),
        ),
      ),
    );
  }
}
