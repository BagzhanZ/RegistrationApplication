import 'package:employee_view_app/pages/main/main_page.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            automaticallyImplyLeading: false,
            // actions: [
            //   const Text("Add new user"),
            //   IconButton(
            //     onPressed: () {
            //       Navigator.of(context).push(MaterialPageRoute(
            //           builder: (context) => const AddNewUserPage()));
            //     },
            //     icon: const Icon(Icons.add),
            //     iconSize: 40.0,
            //   ),
            // ],
            centerTitle: true,
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            // Here we take the value from the MyHomePage object that was created by
            // the App.build method, and use it to set our appbar title.
            title: const Text("Kcell employees",
                style: TextStyle(fontSize: 40.0))),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const SizedBox(
                width: 400.0,
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 20.0,
                      horizontal: 10.0,
                    ),
                    border: OutlineInputBorder(),
                    hintText: "E-mail",
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const SizedBox(
                width: 400.0,
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 20.0,
                      horizontal: 10.0,
                    ),
                    border: OutlineInputBorder(),
                    hintText: "Password",
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Log in"),
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const MainPage()));
                    },
                    icon: const Icon(Icons.login),
                    iconSize: 30.0,
                  ),
                ],
              ),
            ],
          ),
          // Center is a layout widget. It takes a single child and positions it
          // in the middle of the parent.
          // child: Column(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: <Widget>[
          //     //       const Text('Login:', style: TextStyle(fontSize: 20.0)),
          //     //       // Text(
          //     //       //   '$_counter',
          //     //       //   style: Theme.of(context).textTheme.headlineMedium,
          //     //       // ),
          //     IconButton(
          //       onPressed: () {
          //         Navigator.of(context).push(MaterialPageRoute(
          //             builder: (context) => const LoginPage()));
          //       },
          //       icon: const Icon(Icons.login),
          //       iconSize: 50,
          //     ),
          //     const Text("Log in page"),
          //   ],
          // ),
          // floatingActionButton: FloatingActionButton(
          //   onPressed: _incrementCounter,
          //   tooltip: 'Increment',
          //   child: const Icon(Icons.add),
          // ), // This trailing comma makes auto-formatting nicer for build methods.
        ));
  }
}
