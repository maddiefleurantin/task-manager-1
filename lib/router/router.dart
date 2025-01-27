import 'package:go_router/go_router.dart';
import 'package:task_manager_1/views/home_screen.dart';
import 'package:task_manager_1/views/new_task_screen.dart';

final router = GoRouter(
  initialLocation: "/",
  routes: [
    GoRoute(
      path: "/",
      name: "home",
      builder: (context, state) => HomeScreen(),
    ),
    GoRoute(
      path: "/newtask",
      name: "newtask",
      builder: (context, state) => NewTaskScreen(),
    ),
  ],
);
