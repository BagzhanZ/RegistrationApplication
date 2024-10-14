import 'package:employee_view_app/pages/home/my_home_bloc/my_home_bloc.dart';
import 'package:employee_view_app/router/routing_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return BlocListener<MyHomeBloc, MyHomeState>(
      listener: (context, state) {
        if (state is MyHomeSuccessState) {
          Navigator.of(context).pushNamed(RoutingConst.mainPage);
        }
      },
      child: BlocBuilder<MyHomeBloc, MyHomeState>(
        builder: (context, state) {
          if (state is MyHomeInitialState) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is MyHomeLoadingState) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is MyHomeLoadedState) {
            return Scaffold(
                appBar: AppBar(
                    automaticallyImplyLeading: false,
                    centerTitle: true,
                    backgroundColor:
                        Theme.of(context).colorScheme.inversePrimary,
                    title: const Text("Kcell employees",
                        style: TextStyle(fontSize: 40.0))),
                body: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        width: 400.0,
                        child: TextField(
                          controller: state.emailController,
                          decoration: const InputDecoration(
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
                      SizedBox(
                        width: 400.0,
                        child: TextField(
                          controller: state.passwordController,
                          decoration: const InputDecoration(
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
                            onPressed: () => loginAction(context),
                            // {
                            //   Navigator.of(context).push(MaterialPageRoute(
                            //       builder: (context) => const MainPage()));
                            // },
                            icon: const Icon(Icons.login),
                            iconSize: 30.0,
                          ),
                        ],
                      ),
                    ],
                  ),
                ));
          } else {
            return const Text("Error");
          }
        },
      ),
    );
  }

  loginAction(BuildContext context) {
    final MyHomeBloc myHomeBloc = BlocProvider.of<MyHomeBloc>(context);
    myHomeBloc.add(MyHomeCreateEvent());
  }
}
