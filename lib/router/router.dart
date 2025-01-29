import 'package:go_router/go_router.dart';
import 'package:task_manager_1/screens/home_screen.dart';
import 'package:task_manager_1/screens/new_task_screen.dart';
import 'package:task_manager_1/screens/task_details_screen.dart';

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
    GoRoute(
      path: '/taskdetails',
      name: 'taskdetails',
      builder: (context, state) => TaskDetailsScreen(),
    ),
  ],
);
