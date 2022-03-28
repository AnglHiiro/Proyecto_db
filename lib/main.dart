import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:restaurant/views/splash.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

//void main() => runApp(MyUAT());

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyUAT());
}


class MyUAT extends StatelessWidget {
  const MyUAT({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Restaurante',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.grey.shade50,
          backwardsCompatibility: false,
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.transparent
          ),
        ),
      ),
      home: SplashScreen(),
    );
  }
}