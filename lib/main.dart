import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: HomePage(),
      home: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: DefaultTextStyle(
                    style: TextStyle(fontSize: 24.0, color: Color(0xFF660033), fontWeight: FontWeight.bold),
                    child: Text("StrideSync"),
                  ),
                ),

              Padding(
                padding: const EdgeInsets.all(16.0),
                child: RawMaterialButton(
                  onPressed: () {},
                  child: DefaultTextStyle(
                    style: TextStyle(fontSize: 16.0, color: Colors.black87, fontWeight: FontWeight.w400),                    
                    child: Text("Sign Up"),
                  ),
                ),
              ),
            ]
          ),

          const Row(
            children: [
              Column(children: [ // Left column description
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: DefaultTextStyle(
                    style: TextStyle(fontSize: 24.0, color: Colors.black, fontWeight: FontWeight.w400),
                    child: 
                      Text("Just finished running? Let's see how you looked."),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: DefaultTextStyle(
                    style: TextStyle(fontSize: 24.0, color: Colors.black54, fontWeight: FontWeight.w400),
                    child: 
                      Text("Keep track of your runs. Visualize your form. Evaluate your performance."),
                  ),
                ),
              ]),

              Column(children: [
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: DefaultTextStyle(
                    style: TextStyle(fontSize: 24.0, color: Colors.black54, fontWeight: FontWeight.w400),
                    child: 
                      Text("Pic or something"),
                  ),
                ),                
              ])
            ],
          ),
        ],
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: LoginScreen(),
    );
  }
}

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("StrideSync", 
            style: TextStyle(
              color: Colors.redAccent, 
              fontSize: 28.0,
              fontWeight: FontWeight.bold,
            )
          ),

          Text("Start Visualizing ")
        ],
      ),
    );
  }
}