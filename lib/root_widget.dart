import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qossay_s_application1/app_provider.dart';
import 'package:qossay_s_application1/screens/splash_screen.dart';

class ECommerceApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AppProvider(),
      child: MaterialApp(
        title: 'PCNC',
        theme: ThemeData(
          primarySwatch: Colors.orange,
        ),
        home: SplashScreen(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}