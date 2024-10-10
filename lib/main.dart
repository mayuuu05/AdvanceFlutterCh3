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
      backgroundColor: const Color(0xff4DAEA6),
      body: StreamBuilder(
        stream: Connectivity().onConnectivityChanged,
        builder: (context, snapshot) {
          if (snapshot.data!.contains(ConnectivityResult.mobile)) {
            return const Center(
              child: Text('Mobile connected to Internet'),
            );
          } else if (snapshot.data!.contains(ConnectivityResult.wifi)) {
            return const Center(
              child: Text('Mobile connected to wifi'),
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
