import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:glitch/screens/auth_page.dart';
import 'package:glitch/screens/cold_storage.dart';
import 'package:glitch/screens/connect_business.dart';
import 'package:glitch/screens/entry_screen.dart';
import 'package:glitch/screens/graphs_screen.dart';
import 'package:glitch/screens/home_screen.dart';
import 'package:glitch/screens/form_screen.dart';
import 'package:glitch/screens/login.dart';
import 'package:glitch/screens/price_analysis_screen.dart';
import 'package:glitch/screens/remake_detail_screen.dart';
import 'package:glitch/screens/sign_up_screen.dart';
import 'package:glitch/screens/testing_labs.dart';
import 'package:glitch/screens/remake_screen.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

final navigatorKey = GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorKey,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Inter',
        scaffoldBackgroundColor: const Color(0xFFF2F9F2),
        colorScheme: ColorScheme.fromSwatch()
            .copyWith(primary: const Color(0xff22963C))
            .copyWith(background: const Color.fromARGB(100, 242, 249, 242)),
      ),
      home: const MyHomePage(),
      routes: {
        GraphScreen.routeName: (context) => const GraphScreen(),
        PriceAnalysisScreen.routeName: (context) => const PriceAnalysisScreen(),
        RemakeScreen.routename: (context) => const RemakeScreen(),
        RemakeDetailScreen.routeName: (context) => const RemakeDetailScreen(),
        ConnectBusiness.routeName: (context) => const ConnectBusiness(),
        TestingScreen.routeName: (context) => const TestingScreen(),
        ColdStorage.routeName: (context) => const ColdStorage(),
        FormScreen.routeName: (context) => const FormScreen(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: StreamBuilder<User?>(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            } else if (snapshot.hasData) {
              return const HomeScreen();
            } else {
              return const AuthPage();
            }
          },
        ),
      );
}
