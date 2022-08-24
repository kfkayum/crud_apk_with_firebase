import 'package:crud_apk/pages/update_page.dart';
import 'package:flutter/material.dart';

class ListStudentPage extends StatefulWidget {
  const ListStudentPage({Key? key}) : super(key: key);

  @override
  State<ListStudentPage> createState() => _ListStudentPageState();
}

class _ListStudentPageState extends State<ListStudentPage> {
  deleteUser(id) {
    print('User Deleted $id');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Table(
          border: TableBorder.all(),
          columnWidths: const <int, TableColumnWidth>{
            1: FixedColumnWidth(150),
          },
          defaultVerticalAlignment: TableCellVerticalAlignment.middle,
          children: [
            TableRow(
              children: [
                TableCell(
                  child: Container(
                    padding: EdgeInsets.all(15),
                    color: Color.fromARGB(255, 188, 175, 212),
                    child: const Text(
                      "Name",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                TableCell(
                  child: Container(
                    padding: EdgeInsets.all(15),
                    color: Color.fromARGB(255, 188, 175, 212),
                    child: const Text(
                      "Email",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                TableCell(
                  child: Container(
                    padding: EdgeInsets.all(15),
                    color: Color.fromARGB(255, 188, 175, 212),
                    child: const Text(
                      "Action",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
            TableRow(
              children: [
                TableCell(
                  child: Container(
                    padding: EdgeInsets.all(8),
                    child: const Text(
                      "Mohammad Kayum Fakir ",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                TableCell(
                  child: Container(
                    padding: EdgeInsets.all(8),
                    child: const Text(
                      "kfkayum@gmail.com",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                TableCell(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      children: [
                        IconButton(
                          tooltip: 'Edit',
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => UpdatePage(),
                              ),
                            );
                          },
                          icon: const Icon(
                            Icons.edit,
                            color: Color.fromARGB(255, 45, 128, 33),
                          ),
                        ),
                        IconButton(
                          tooltip: 'Delete',
                          onPressed: () {
                            deleteUser(1);
                          },
                          icon: const Icon(
                            Icons.delete,
                            color: Color.fromARGB(255, 219, 71, 71),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
