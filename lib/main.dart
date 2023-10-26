import 'package:flutter/material.dart';
import 'ui/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'StrideSync',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 126, 14, 39)),
      ),
      home: const Login(),
    );
  }
}

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _Login();
}

class _Login extends State<Login> {
  PageController controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: PageView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 1,
        controller: controller,
        itemBuilder: (context, index) {
          if (index == 0) { // add additional for forgot password? sign up? 
            return LoginScreen(
              controller: controller,
            );
          }
        },
      ),
    );
  }
}
