import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart' hide EmailAuthProvider;
import 'package:flutter/material.dart';
import 'package:stridesync_ui/authgate.dart';
import 'package:stridesync_ui/ui/landing.dart';
import 'package:stridesync_ui/ui/login.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyC4q0ZHrYo6lwBs0OOH1t_ZGADSotJfjIM", 
      messagingSenderId: "428070319156",
      projectId: "stridesync-2ded9",
      appId: "1:428070319156:web:8ebacaff969ae4a3d24661",
      )
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key : key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'StrideSync',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 126, 14, 39)),
      ),
      home: WebPage()
    );
  }
}

class WebPage extends StatefulWidget {
  WebPage({super.key});

  @override
  State<WebPage> createState() => _WebPage();
}

class _WebPage extends State<WebPage> {
  @override
  Widget build(BuildContext context) => const Scaffold(
    body: DecoratedBox( 
      decoration: BoxDecoration( 
        image: DecorationImage( 
          image: AssetImage("assets/mountain.jpeg"), 
          fit: BoxFit.cover),
      ),
    ),
  );
}


// class Login extends StatefulWidget {
//   const Login({super.key});

//   @override
//   State<Login> createState() => _Login();
// }

// class _Login extends State<Login> {
//   PageController controller = PageController(initialPage: 0);

//   @override
//   Widget build(BuildContext context){
//     return Scaffold(
//       body: PageView.builder(
//         physics: const NeverScrollableScrollPhysics(),
//         itemCount: 1,
//         controller: controller,
//         itemBuilder: (context, index) {
//           if (index == 0) { // add additional for forgot password? sign up? 
//             return LoginScreen(
//               controller: controller,
//             );
//           }
//         },
//       ),
//     );
//   }
// }
