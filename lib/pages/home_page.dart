import 'package:crud_apk/pages/add_student.dart';
import 'package:crud_apk/pages/list_student_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Firebase CRUD'),
        centerTitle: true,
      ),
      body: ListStudentPage(),
      floatingActionButton: FloatingActionButton(
        elevation: 0,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AddStudent(),
            ),
          );
        },
        child: Text('Add'),
      ),
    );
  }
}
