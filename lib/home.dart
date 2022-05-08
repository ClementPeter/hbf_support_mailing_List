import 'package:flutter/material.dart';
import 'package:hbf_trenches_support/support_page.dart';

import 'dart:ui';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);
  //const MyHomePage({Key? key, required this.title}) : super(key: key);
  // final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'images/geng.png',
            ),
            fit: BoxFit.fill,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                //padding: const EdgeInsets.all(40.0),
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 20.0),
                child: Image.asset(
                  'images/hbf_logo.png',
                  width: 60.0,
                  height: 100.0,
                ),
              ),


              //frosted glass effect
              Padding(
                //padding: const EdgeInsets.all(8.0),
                padding: const EdgeInsets.symmetric(horizontal: 50.0),
                child: ClipRect(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                    child: Center(
                      child: Container(
                        width: MediaQuery.of(context).size.width * 1,
                        height: MediaQuery.of(context).size.height * 0.7,
                        // width: 500.0,
                        // height: 150.0,s
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: Colors.grey.shade200.withOpacity(0.5),
                        ),
                        child: SingleChildScrollView(
                          child: Padding(
                            padding:
                                const EdgeInsets.only(left: 10.0, right: 10.0),
                            child: Column(
                              //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const SizedBox(height: 75.0),
                                Center(
                                  child: Column(
                                    children: const [
                                      Text(
                                        "Having the capacity to support my fellow dawgs has been my life long goal...\nKnowing how it feels being in the trenches without shit...\nThus In collaboration with DURK I am setting up",
                                        textAlign: TextAlign.center,
                                        //style: TextStyle(fontSize: 30),
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20.0,
                                          color: Color(0XFF205DA2),
                                        ),
                                      ),
                                      SizedBox(height: 20.0),
                                      Text(
                                        "HOT BOII FAMILY FOUNDATION\n",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.bold,
                                          fontSize: 25.0,
                                          color: Color(0XFFDC3131),
                                        ),
                                      ),
                                      Text(
                                        "Sign up for this Mailing List to get support\n",
                                        textAlign: TextAlign.center,
                                        // style: TextStyle(fontSize: 30),
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          //fontWeight: FontWeight.bold,
                                          fontSize: 16.0,
                                          color: Color(0XFF205DA2),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                //const SizedBox(height: 20.0),
                                //Join Button
                                InkWell(
                                  onTap: () {
                                    print('Support Page');
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const SupportPage(),
                                      ),
                                    );
                                  },
                               
                                  child: Container(
                                    width: 140.0,
                                    height: 40.0,
                                    decoration: BoxDecoration(
                                      color: const Color(0XFF205DA2),
                                      borderRadius: BorderRadius.circular(30.0),
                                      // color: Colors.grey.shade200.withOpacity(0.5),
                                    ),
                                    child: const Center(
                                      child: Text(
                                        "Join",
                                        textAlign: TextAlign.center,
                                        // style: TextStyle(fontSize: 30),
                                        // style: GoogleFonts.poppins(
                                        //   fontWeight: FontWeight.w700,
                                        //   textStyle: const TextStyle(
                                        //     color: Color(0XFF205DA2),
                                        //   ),
                                        // ),
                                        style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18.0,
                                            color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 30.0),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}












































































































// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key}) : super(key: key);
//   //const MyHomePage({Key? key, required this.title}) : super(key: key);
//   // final String title;
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         width: MediaQuery.of(context).size.width,
//         height: MediaQuery.of(context).size.height,
//         decoration: const BoxDecoration(
//           image: DecorationImage(
//             image: AssetImage(
//               'images/geng.png',
//             ),
//             fit: BoxFit.fill,
//           ),
//         ),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Padding(
//               //padding: const EdgeInsets.all(40.0),
//               padding:
//                   const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
//               child: Image.asset(
//                 'images/hbf_logo.png',
//                 width: 60.0,
//                 height: 100.0,
//               ),
//             ),

//             // Center(
//             //   child: BackdropFilter(
//             //     filter: ImageFilter.blur(
//             //       sigmaX: 10.0,
//             //       sigmaY: 10.0,
//             //     ),
//             //     child: Container(
//             //       alignment: Alignment.center,
//             //       child: const Text('Hi Frost'),
//             //     ),
//             //   ),
//             // ),

//             //frosted glass effect
//             Padding(
//               //padding: const EdgeInsets.all(8.0),
//               padding: const EdgeInsets.symmetric(horizontal: 50.0),
//               child: ClipRect(
//                 child: BackdropFilter(
//                   filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
//                   child: Center(
//                     child: Container(
//                       width: MediaQuery.of(context).size.width * 1,
//                       height: MediaQuery.of(context).size.height * 0.7,
//                       // width: 500.0,
//                       // height: 150.0,s
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(20.0),
//                         color: Colors.grey.shade200.withOpacity(0.5),
//                       ),
//                       child: SingleChildScrollView(
//                         child: Padding(
//                           padding:
//                               const EdgeInsets.only(left: 10.0, right: 10.0),
//                           child: Column(
//                             //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                             children: [
//                               const SizedBox(height: 50.0), //
//                               Center(
//                                 child: Column(
//                                   children: const [
//                                     Text(
//                                       "Having the capacity to support my fellow dawgs has been my life long goal...\nKnowing how it feels being in the trenches without shit...\nThus In collaboration with DURK I am setting up",
//                                       textAlign: TextAlign.center,
//                                       //style: TextStyle(fontSize: 30),
//                                       style: TextStyle(
//                                         fontFamily: 'Poppins',
//                                         fontWeight: FontWeight.bold,
//                                         fontSize: 25.0,
//                                         color: Color(0XFF205DA2),
//                                       ),
//                                     ),
//                                     SizedBox(height: 20.0),
//                                     Text(
//                                       "HOT BOII FAMILY FOUNDATION\n",
//                                       textAlign: TextAlign.center,
//                                       style: TextStyle(
//                                         fontFamily: 'Poppins',
//                                         fontWeight: FontWeight.bold,
//                                         fontSize: 30.0,
//                                         color: Color(0XFFDC3131),
//                                       ),
//                                     ),
//                                     Text(
//                                       "Sign up for this Mailing List to get support\n",
//                                       textAlign: TextAlign.center,
//                                       // style: TextStyle(fontSize: 30),
//                                       style: TextStyle(
//                                         fontFamily: 'Poppins',
//                                         //fontWeight: FontWeight.bold,
//                                         fontSize: 18.0,
//                                         color: Color(0XFF205DA2),
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                               //const SizedBox(height: 20.0),
//                               //Join Button
//                               InkWell(
//                                 onTap: () {
//                                   print('Support Page');
//                                   Navigator.push(
//                                     context,
//                                     MaterialPageRoute(
//                                       builder: (context) => const SupportPage(),
//                                     ),
//                                   );
//                                 },
//                                 child: Container(
//                                   width: 140.0,
//                                   height: 40.0,
//                                   decoration: BoxDecoration(
//                                     color: const Color(0XFF205DA2),
//                                     borderRadius: BorderRadius.circular(30.0),
//                                     // color: Colors.grey.shade200.withOpacity(0.5),
//                                   ),
//                                   child: const Center(
//                                     child: Text(
//                                       "Join",
//                                       textAlign: TextAlign.center,
//                                       // style: TextStyle(fontSize: 30),
//                                       // style: GoogleFonts.poppins(
//                                       //   fontWeight: FontWeight.w700,
//                                       //   textStyle: const TextStyle(
//                                       //     color: Color(0XFF205DA2),
//                                       //   ),
//                                       // ),
//                                       style: TextStyle(
//                                           fontFamily: 'Poppins',
//                                           fontWeight: FontWeight.bold,
//                                           fontSize: 20.0,
//                                           color: Colors.white),
//                                     ),
//                                   ),

//                                   // child: const Padding(
//                                   //   padding: EdgeInsets.all(15.0),
//                                   //   child: Text(
//                                   //     "join",
//                                   //     style: TextStyle(fontSize: 20),
//                                   //   ),
//                                   // ),
//                                 ),
//                               ),
//                               const SizedBox(height: 30.0),
//                             ],
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
