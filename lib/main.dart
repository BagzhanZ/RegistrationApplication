import 'package:employee_view_app/pages/add_new_user/add_new_user_bloc/add_new_user_bloc.dart';
import 'package:employee_view_app/pages/home/my_home_bloc/my_home_bloc.dart';
import 'package:employee_view_app/pages/home/my_home_page.dart';
import 'package:employee_view_app/pages/login/login_bloc/login_bloc.dart';
import 'package:employee_view_app/pages/main/main_bloc/main_bloc.dart';
import 'package:employee_view_app/router/router.dart';
import 'package:employee_view_app/router/routing_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AddNewUserBloc(),
        ),
        BlocProvider(
          create: (context) => MyHomeBloc()..add(MyHomeInitialEvent()),
        ),
        BlocProvider(
          create: (context) => LoginBloc(),
        ),
        BlocProvider(
          create: (context) => MainBloc(),
        ),
      ],
      child: BlocBuilder<MainBloc, MainState>(
        builder: (context, state) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            initialRoute: RoutingConst.homePage,
            onGenerateRoute: MetaRouter.onGenerateRoute,
            title: 'Flutter Demo',
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(
                seedColor: const Color.fromARGB(255, 77, 7, 83),
              ),
              useMaterial3: true,
            ),
            home: const MyHomePage(),
          );
        },
      ),
    );
  }
}
