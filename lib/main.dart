import 'package:advance_flutter_ch3/inAppWebView/splash_Screen.dart';
import 'package:advance_flutter_ch3/inAppWebView/web_Screen.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: StreamBuilder(
        stream: Connectivity().onConnectivityChanged,
        builder: (context, snapshot) {
          if (snapshot.data!.contains(ConnectivityResult.mobile)) {
            return const Center(
              child: SplashScreen(),
            );
          } else if (snapshot.data!.contains(ConnectivityResult.wifi)) {
            return const Center(
              child: SplashScreen(),
            );
          } else {
            return Center(
              child: Image.asset('assets/images/Bly.gif'),
            );
          }
        },
      ),
    );
  }
}



