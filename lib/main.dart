import 'package:commit_m/core/utils/routes/routes.dart';
import 'package:commit_m/core/theme/color_scheme/colors.dart';
import 'package:commit_m/core/theme/text/text_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});



  @override
  Widget build(BuildContext context) {
    final appRouter = AppRouter();


    return MaterialApp.router(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: commitMLightColorScheme,
        textTheme: lightTextTheme,
        useMaterial3: true,
      ),
      routerConfig: appRouter.config(),
    );
  }
}

