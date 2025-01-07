import 'package:crypto_app_ui/src/features/home/presentation/screens/home.dart';
import 'package:crypto_app_ui/src/route/app_router.dart';
import 'package:crypto_app_ui/src/themes/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final AppRouter _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.dark,
        darkTheme: createDarkTheme(),
        theme: createDarkTheme(),
        onGenerateRoute: _appRouter.onGenerateRoute,
        home: const Home());
  }

  @override
  void dispose() {
    super.dispose();
  }
}
