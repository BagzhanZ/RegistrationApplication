import 'package:flutter/material.dart';
import 'package:employee_view_app/pages/home/my_home_page.dart';
import 'package:employee_view_app/pages/add_new_user/add_new_user_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.logout),
            iconSize: 30.0,
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const MyHomePage()));
            },
          ),
          automaticallyImplyLeading: false,
          actions: [
            const Text("Add"),
            IconButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const AddNewUserPage()));
              },
              icon: const Icon(Icons.add),
              iconSize: 30.0,
            ),
          ],
          centerTitle: true,
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text("Main page", style: TextStyle(fontSize: 30.0))),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            //   const Text("Log Out"),
            //   IconButton(
            //     onPressed: () {
            //       Navigator.of(context).push(MaterialPageRoute(
            //           builder: (context) => const MyHomePage()));
            //     },
            //     icon: const Icon(Icons.logout),
            //     iconSize: 30.0,
            //   )
            // ])
          ],
        ),
      ),
    );
  }
}
