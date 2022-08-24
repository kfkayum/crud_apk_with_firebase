import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class UpdatePage extends StatefulWidget {
  const UpdatePage({Key? key}) : super(key: key);

  @override
  State<UpdatePage> createState() => _UpdatePageState();
}

class _UpdatePageState extends State<UpdatePage> {
  final _formkey = GlobalKey<FormState>();
  UpdateUser() {
    print('User Is Updated');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Update Student'),
      ),
      body: Form(
        key: _formkey,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 12),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.deepPurpleAccent.withOpacity(0.1),
                        blurRadius: 10,
                        spreadRadius: 5,
                        offset: Offset(0, 5), // changes position of shadow
                      ),
                    ],
                  ),
                  child: TextFormField(
                    autofocus: false,
                    initialValue: "Kayum",
                    onChanged: (value) => {},
                    decoration: InputDecoration(
                      labelText: 'Name',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please enter the name ";
                      }
                      return null;
                    },
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.deepPurpleAccent.withOpacity(0.1),
                        blurRadius: 10,
                        spreadRadius: 5,
                        offset: Offset(0, 5), // changes position of shadow
                      ),
                    ],
                  ),
                  child: TextFormField(
                    autofocus: false,
                    initialValue: "kfkayum@gmail.com",
                    onChanged: (value) => {},
                    decoration: InputDecoration(
                      labelText: 'Email',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please enter the email ";
                      } else if (!value.contains('@')) {
                        return "Please enter your valid email ";
                      }
                      return null;
                    },
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.deepPurpleAccent.withOpacity(0.1),
                        blurRadius: 10,
                        spreadRadius: 5,
                        offset: Offset(0, 5), // changes position of shadow
                      ),
                    ],
                  ),
                  child: TextFormField(
                    autofocus: false,
                    obscureText: true,
                    initialValue: "123456",
                    onChanged: (value) => {},
                    decoration: InputDecoration(
                      labelText: 'Password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please enter the password ";
                      }
                      return null;
                    },
                  ),
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        if (_formkey.currentState!.validate()) {
                          setState(() {
                            UpdateUser();
                            Navigator.pop(context);
                          });
                        }
                      },
                      child: const Text('Update'),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
