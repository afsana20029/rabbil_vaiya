import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rabbil_vaiya/style.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}
//
class _HomePageState extends State<HomePage> {
  final _controllerFirstName = TextEditingController();
  final _controllerLastName = TextEditingController();
  String firstName = '';
  String lastName = '';
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("TextField inFlutter")),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Filed is Empty";
                  }
                },
                controller: _controllerFirstName,
                decoration: EnterInputStyle(),
              ),
              SizedBox(
                height: 8,
              ),
              TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Filed is Empty";
                  }
                },
                controller: _controllerLastName,
                decoration: EnterInputStyle(),
              ),
              SizedBox(
                height: 8,
              ),
              ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {

                    } else {
                      return;
                    }
                    setState(() {
                      firstName = _controllerFirstName.text;
                      lastName = _controllerLastName.text;
                    });
                  },
                  child: Text('Submit new')),
              Text("First Name:$firstName"),
              Text("Last Name:$lastName"),
            ],
          ),
        ),
      ),
    );
  }
}
