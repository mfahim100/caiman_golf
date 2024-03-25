import 'package:caiman_golf/core/providers/menu_provider.dart';
import 'package:caiman_golf/ui/screens/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (context , orientation , screenType ) {
        return MultiProvider(
          providers: [
            ChangeNotifierProvider(create: (_)=> MenuProvider())
          ],
          child: MaterialApp(
            showSemanticsDebugger: false,
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              useMaterial3: true,
            ),
            home:
            // const SignUpScreen()
            const SplashScreen()
          ),
        );
      },

    );
  }
}

