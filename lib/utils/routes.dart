import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../services/app_service.dart';
import '../views/screens/booking_confirmation/booking_confirmation.dart';
import '../views/screens/doctor_details/doctor_details.dart';
import '../views/screens/review_booking/review_booking.dart';
import '../views/screens/select_package/select_package.dart';
import '../views/screens/start/start_screen.dart';
import '../views/screens/view_bookings/view_bookings.dart';
class Routes {
  static const String initalRoute = "/";
  static const String hometRoute = "/home";
  static const String doctorDetailsRoute= "/doctor-details";
 static const String selectPackageRoute= "/select-package";
  static const String reviewBookingRoute= "/review-booking";
  static const String bookingConfirmationRoute= "/booking-confirmation";
  static const String viewBoookingRoute= "/view-booking";

  late final AppService appService;
  GoRouter get router => _goRouter;
  Routes(this.appService);

  late final GoRouter _goRouter = GoRouter(
    initialLocation: hometRoute,
    refreshListenable: appService,
    routerNeglect: true,
    routes: <GoRoute>[
      GoRoute(
        path: hometRoute,
        builder: (BuildContext context, GoRouterState state) => const WelcomeScreen(),
      ),
      GoRoute(
        path: doctorDetailsRoute,
        builder: (BuildContext context, GoRouterState state) => const DoctorDetailsScreen(),
      ),
      GoRoute(
        path: selectPackageRoute,
        builder: (BuildContext context, GoRouterState state) => const SelectPackageScreen(),
      ),
      GoRoute(
        path: reviewBookingRoute,
        builder: (BuildContext context, GoRouterState state) => const ReviewBookingScreen(),
      ),
      GoRoute(
        path: bookingConfirmationRoute,
        builder: (BuildContext context, GoRouterState state) => const BookingConfirmationScreen(),
      ),
      GoRoute(
        path: viewBoookingRoute,
        builder: (BuildContext context, GoRouterState state) => const ViewBookingScreen(),
      ),
    ],
    redirect: (context, state) {
      bool isLogedIn = appService.loginState;
      final isInitialized = appService.initialized;
      final subloc = state.subloc;
      final authViewName = appService.authViewname;
      print("object");
      print("subloc :- $subloc");
      print("isLoggedIn :- $isLogedIn");
      print("AuthName :- $authViewName");
      print("IsInitialized :- $isInitialized");

     if (authViewName == "/home" && subloc == '/') {
        return hometRoute;
      } else if (authViewName == "/doctor-details" &&
          subloc == "/home") {
        return doctorDetailsRoute;

      } else if (authViewName == "/select-package" &&
          subloc == "/doctor-details") {
        return selectPackageRoute;
      } else if (authViewName == "/review-booking" &&
          subloc == "/select-package") {
        return reviewBookingRoute;
      } else if (authViewName == "/booking-confirmation" &&
          subloc == "/review-booking") {
        return bookingConfirmationRoute;
      } 
    

      // //login then go to particular screeen
      // if (isLogedIn && isInitialized && authViewName == "") {
      //   if (authViewName == "/home" && subloc == '/') {
      //   return hometRoute;
      // } else if (authViewName == "/doctor-details" &&
      //     subloc == "/home") {
      //   return doctorDetailsRoute;

      // } else if (authViewName == "/select-package" &&
      //     subloc == "/doctor-details") {
      //   return selectPackageRoute;
      // } else if (authViewName == "/review-booking" &&
      //     subloc == "/select-package") {
      //   return reviewBookingRoute;
      // } else if (authViewName == "/booking-confirmation" &&
      //     subloc == "/review-booking") {
      //   return bookingConfirmationRoute;
      // } 
      //   return hometRoute;
      // }
      // return null;
    },
    
  );
}
