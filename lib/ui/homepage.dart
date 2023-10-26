import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 126, 14, 39),
        title: const Text("Main Menu"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(50),
            child: Column(
              textDirection: TextDirection.ltr,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Text("Length of Activity"),
                        Text("00.00"),
                      ]
                    ),
                    
                    Column(
                      children: [
                        Text("Cadence (spm)"),
                        Text("150 spm"),
                      ]
                    ),

                    Column(
                      children: [
                        Text("Something Else"),
                        Text("00.00"),
                      ]
                    ),

                  ]
                ),

                const SizedBox(
                height: 20,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 150,
                      width: 400,
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 126, 14, 39),
                        ),
                        child: const Center(
                          child: Text("This is where a visual would be?"),
                        )
                      ),
                    ),
                  ]
                ),
              ],
            ),
          ),

          const SizedBox(
            height: 20,
          ),

          Container(
            alignment: Alignment.center,
            child:
              const ExpansionTile(
                title: Center(
                  child: Text(
                    "Sweat Analysis",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  )
                ),
                collapsedBackgroundColor: Color.fromARGB(255, 126, 14, 39),
                backgroundColor: Color.fromARGB(255, 161, 78, 96),
                children: <Widget>[
                  ListTile(
                    title: Center(
                      child: Text("This will be where the sweat analysis is",
                        textAlign: TextAlign.center
                      )
                    )
                  ),
                ],
              )
          ),
        ],
      ),
    );
  }
}


        //   Row(
        //     child:
        //       children: [
        //         const Text("Length of Activity"),
        //         const Text("00.00"),
        //       ]
        //     ),

        //     Container(
        //       child: [
        //         Text("Cadence (spm)"),
        //         Text("150 spm"),
        //       ]
        //     ),

        //     Container(
        //       child: [
        //         Text("Something Else"),
        //         Text("00.00"),
        //       ]
        //     ),
        //   ),

        //   Row(
        //     children: [
        //       ExpansionTile(
        //         title: Center(
        //           child: Text(
        //             "Sweat Analysis",
        //             textAlign: TextAlign.center
        //           )
        //         ),
        //         children: <Widget>[
        //           ListTile(
        //             title: Text("This will be where the sweat analysis is")
        //           ),
        //         ],
        //       )
        //     ],
        //   ),
        // ],

      // body: Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: <Widget>[
      //       const Row(
      //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //         children: [
      //           SizedBox(
      //             height: 20,
      //           ),

      //           SizedBox(
      //             height: 20,
      //           ),

      //           SizedBox(
      //             height: 20,
      //           ),
      //         ],
      //       ),

      //       Text(
      //         '$_counter',
      //         style: Theme.of(context).textTheme.headlineMedium,
      //         textAlign: TextAlign.center,
      //       ),
      //     ],

// const ExpansionTile(
//   title: Center(
//     child: Text(
//       "Sweat Analysis",
//       textAlign: TextAlign.center
//     )
//   ),
//   children: <Widget>[
//     ListTile(
//       title: Text("This will be where the sweat analysis is")
//     ),
//   ],
// )
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ),