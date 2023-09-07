import 'package:classcheck/views/screens/login/login_screen.dart';
import 'package:classcheck/views/screens/start/start_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../services/app_service.dart';

// final unknownRoute = GetPage(
//   name: Routes.hometRoute,
//   page: () => StartScreen(),
// );

class Routes {
  // static const String hometRoute = "/home";
  static const String loginRoute = "/login";

  late final AppService appService;
  GoRouter get router => _goRouter;
  Routes(this.appService);

  late final GoRouter _goRouter = GoRouter(
    initialLocation: loginRoute,
    refreshListenable: appService,
    routerNeglect: true,
    routes: <GoRoute>[
      // GoRoute(
      //   path: hometRoute,
      //   builder: (BuildContext context, GoRouterState state) => StartScreen(),
      // ),
       GoRoute(
        path: loginRoute,
        builder: (BuildContext context, GoRouterState state) => LoginScreen(),
      ),
      
      // GoRoute(
      //   path: phoneRoute,
      //   builder: (BuildContext context, GoRouterState state) => PhomeScreen(),
      // ),
    ],
    // redirect: (context, state) {
    //   bool isLogedIn = appService.loginState;
    //   final isInitialized = appService.initialized;
    //   final subloc = state.subloc;
    //   final authViewName = appService.authViewname;
    //   print("object");
    //   print("subloc :- $subloc");
    //   print("isLoggedIn :- $isLogedIn");
    //   print("AuthName :- $authViewName");
    //   print("IsInitialized :- $isInitialized");
    //   if (authViewName == "/phone" && subloc == '/') {
    //     return phoneRoute;
    //   } else if (authViewName == "/verifyotp" &&
    //       subloc ==
    //           "/                                                                                                                                               ") {
    //     return verifyotpRoute;
    //   } else if (authViewName == "/org" && subloc == "/org") {
    //     return orgRoute;
    //   } else if (authViewName == "/invite" && subloc == "/invite") {
    //     return initialRoute;
    //   } else if (authViewName == "/confirmation" && subloc == "/confirmation") {
    //     return confirmationRoute;
    //   }

    //   // / login then go to particular screeen
    //   if (isLogedIn && isInitialized && authViewName == "") {
    //     if (subloc == "/attendance" && authViewName == "") {
    //       return attendanceRoute;
    //     } else if (subloc == "/timeentry" && authViewName == "") {
    //       return timeentryRoute;
    //     } else if (subloc == "/mark-attendance" && authViewName == "") {
    //       return markattendanceRoute;
    //     } else if (subloc == "/payslips" && authViewName == "") {
    //       return payslipsRoute;
    //     } else if (subloc == "/approvals" && authViewName == "") {
    //       return approvalsRoute;
    //     }

    //     return attendanceRoute;
    //   }
    //   return null;
    // },
  );
}
