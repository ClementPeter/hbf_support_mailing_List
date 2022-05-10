import 'package:flutter/material.dart';
import 'package:hbf_trenches_support/support_page.dart';
import 'dart:ui';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);
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
                padding: const EdgeInsets.symmetric(
                    horizontal: 50.0, vertical: 20.0),
                child: Image.asset(
                  'images/hbf_logo.png',
                  width: 60.0,
                  height: 100.0,
                ),
              ),
              //Frosted glass effect
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50.0),
                child: ClipRect(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                    child: Center(
                      child: Container(
                        width: MediaQuery.of(context).size.width * 1,
                        height: MediaQuery.of(context).size.height * 0.7,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: Colors.grey.shade200.withOpacity(0.5),
                        ),
                        child: SingleChildScrollView(
                          child: Padding(
                            padding:
                                const EdgeInsets.only(left: 10.0, right: 10.0),
                            child: Column(
                              children: [
                                const SizedBox(height: 75.0),
                                Center(
                                  child: Column(
                                    children: const [
                                      Text(
                                        "Having the capacity to support my fellow dawgs has been my life long goal...\nKnowing how it feels being in the trenches without shit...\nThus In collaboration with DURK I am setting up",
                                        textAlign: TextAlign.center,
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
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: 16.0,
                                          color: Color(0XFF205DA2),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: const Color(0XFF205DA2),
                                    elevation: 10.0,
                                    shape: const StadiumBorder(),
                                  ),
                                  onPressed: () {
                                    print('Support Page');
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const SupportPage(),
                                      ),
                                    );
                                  },
                                  child: const Padding(
                                    padding: EdgeInsets.only(
                                      top: 8,
                                      bottom: 8,
                                      right: 25,
                                      left: 25,
                                    ),
                                    child: Text(
                                      'Join',
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16.0,
                                        color: Colors.white,
                                        letterSpacing: 2.0,
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
         ),
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
//                  
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
