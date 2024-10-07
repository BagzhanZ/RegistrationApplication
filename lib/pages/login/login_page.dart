import 'package:flutter/material.dart';
import 'package:employee_view_app/pages/main/main_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            centerTitle: true,
            title: const Text("Login page", style: TextStyle(fontSize: 30.0))),
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
              // ElevatedButton(
              //   onPressed: () {},
              //   style: ElevatedButton.styleFrom(
              //       backgroundColor: const Color.fromARGB(255, 164, 92, 177),
              //       padding: const EdgeInsets.symmetric(
              //           horizontal: 50, vertical: 15),
              //       textStyle: const TextStyle(
              //           fontSize: 20, fontWeight: FontWeight.bold)),
              //   child:
              //       const Text('Log In', style: TextStyle(color: Colors.black)),
              // ),
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
          // body: const Center(
          //   child: Column(
          //     mainAxisAlignment: MainAxisAlignment.center,
          //     children: [
          //       Text("email"),
          //       TextField(),
          //       Text("password"),
          //       TextField(),
          //     ],
          //   ),
          // ),
        ));
  }
}
