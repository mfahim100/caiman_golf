import 'package:caiman_golf/core/providers/menu_provider.dart';
import 'package:caiman_golf/ui/screens/auth_screens/sign_up_screen.dart';
import 'package:caiman_golf/ui/screens/tabs/events_tab.dart';
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
                // const EventsTab()

            const SignUpScreen()
            // const SplashScreen()
          ),
        );
      },

    );
  }
}

