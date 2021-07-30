import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_concepts/logic/cubit/counter_cubit.dart';
import 'package:flutter_bloc_concepts/presentation/screens/home_screen.dart';
import 'package:flutter_bloc_concepts/presentation/screens/second_screen.dart';
import 'package:flutter_bloc_concepts/presentation/screens/third_screen.dart';

class AppRouter {
  Route onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case '/':
        return MaterialPageRoute(
            builder: (_) => MyHomeScreen(
                  title: "Home Screen",
                  colors: Colors.blueAccent,
                ));
        break;
      case '/second':
        return MaterialPageRoute(
            builder: (_) => SecondScreen(
                  title: "Second Screen",
                  colors: Colors.redAccent,
                ));
        break;
      case '/third':
        return MaterialPageRoute(
            builder: (_) => ThirdScreen(
                  title: "Third Screen",
                  colors: Colors.greenAccent,
                ));
        break;
      default:
        return null;
    }
  }
}
