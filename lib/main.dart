import 'dart:async';

import 'package:ekam/services/app_service.dart';
import 'package:ekam/services/auth_service.dart';
import 'package:ekam/utils/initial_binding.dart';
import 'package:ekam/utils/routes.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

// void main() {
//   runApp(const MyApp());
// }

Future<void> main() async {
  LicenseRegistry.addLicense(() async* {
    final license = await rootBundle.loadString('google_fonts/OFL.txt');
    yield LicenseEntryWithLineBreaks(['google_fonts'], license);
  });
  // setPathUrlStrategy();

  WidgetsFlutterBinding.ensureInitialized();
  final SharedPreferences sharedPreferences =
      await SharedPreferences.getInstance();
  await GetStorage.init();
  initialBindings();

  runApp(MyApp(
    prefs: sharedPreferences,
  ));
}

class MyApp extends StatefulWidget {
  final SharedPreferences prefs;

  const MyApp({Key? key, required this.prefs}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late AppService appService;
  late AuthService authService;
  late StreamSubscription<bool> authSubscription;

  @override
  void initState() {
    appService = AppService(widget.prefs);
    authService = AuthService();
    authSubscription = authService.onAuthStateChange.listen(onAuthStateChange);
    super.initState();
  }

  void onAuthStateChange(bool login) {
    appService.loginState = login;
  }

  @override
  void dispose() {
    authSubscription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<AppService>(create: (_) => appService),
        Provider<Routes>(create: (_) => Routes(appService)),
        Provider<AuthService>(create: (_) => authService),
      ],
      child: Builder(
        builder: (context) {
          final GoRouter goRouter =
              Provider.of<Routes>(context, listen: false).router;
          return ScreenUtilInit(
              minTextAdapt: true,
              designSize: const Size(360, 690),
              builder: (BuildContext context, child) {
                return GetMaterialApp.router(
                
                  title: 'ekam',
                  initialBinding: InitialBinding(),
                  debugShowCheckedModeBanner: false,
                  theme: ThemeData(fontFamily: 'Kumbh Sans'),
                  routeInformationProvider: goRouter.routeInformationProvider,
                  routeInformationParser: goRouter.routeInformationParser,
                  routerDelegate: goRouter.routerDelegate,
                );
              });
        },
      ),
    );
  }
}
