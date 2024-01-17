//main_page.dart file

import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  var tfControllerNameLastName = TextEditingController();
  var tfControllerDepartment = TextEditingController();
  String userNameandLastName = "";
  String userDepartment = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Main Page")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Employee name and last name: $userNameandLastName"),
            Text("Employee department: $userDepartment"),
            SizedBox(
                width: 200,
                child: ElevatedButton(
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text(
                                "User Info",
                                style: TextStyle(color: Colors.white),
                              ),
                              backgroundColor: Colors.greenAccent,
                              content: SizedBox(
                                height: 150,
                                child: Column(children: [
                                  TextField(
                                    controller: tfControllerNameLastName,
                                    decoration: InputDecoration(
                                        labelText: "User name and last name"),
                                  ),
                                  SizedBox(height: 15),
                                  TextField(
                                    controller: tfControllerDepartment,
                                    decoration: InputDecoration(
                                        labelText: "User department"),
                                  ),
                                ]),
                              ),
                              actions: [
                                ElevatedButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: Text(
                                      "Cancel",
                                      style: TextStyle(color: Colors.red),
                                    )),
                                ElevatedButton(
                                    onPressed: () {
                                      userNameandLastName =
                                          tfControllerNameLastName.text;
                                      userDepartment =
                                          tfControllerDepartment.text;
                                      tfControllerNameLastName.text = "";
                                      tfControllerDepartment.text = "";
                                      Navigator.pop(context);
                                    },
                                    child: Text(
                                      "Ok",
                                      style: TextStyle(color: Colors.blue),
                                    ))
                              ],
                            );
                          });
                    },
                    child: Text("User Info"))),
          ],
        ),
      ),
    );
  }
}
