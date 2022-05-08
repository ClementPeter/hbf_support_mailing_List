import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'dart:ui';

class SupportPage extends StatefulWidget {
  const SupportPage({Key? key}) : super(key: key);

  @override
  State<SupportPage> createState() => _SupportPageState();
}

class _SupportPageState extends State<SupportPage> {
  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    emailController.dispose();
    nameController.dispose();
    super.dispose();
  }

  //form key
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  //final _formKey = GlobalKey<FormState>();

  //email controller
  TextEditingController emailController = TextEditingController();
  //name controller
  TextEditingController nameController = TextEditingController();
  //
  //Stores user email
  String? email;
  //
  //Stores user nameS
  String? name;
  //Store email into an empty List
  List<String>? emails = [];
  //
  //Store names into an empty List
  List<String>? names = [];

  //
  submit() {
    emails!.add(emailController.text);
    print(emails);
    emailController.clear();
    print('emails list after clearing');
    print(emails);
    //if(){},
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text("Form Filled"),
        duration: Duration(milliseconds: 2000),
      ),
    );
  }

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
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
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
                child: SingleChildScrollView(
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
                              padding: const EdgeInsets.only(
                                  left: 10.0, right: 10.0),
                              child: Form(
                                key: formKey,
                                child: Column(
                                  children: [
                                    const SizedBox(height: 30.0),
                                    Center(
                                      child: Padding(
                                        padding: const EdgeInsets.all(.0),
                                        child: Column(
                                          children: const [
                                            Text(
                                              "Let us support your needs",
                                              textAlign: TextAlign.center,
                                              //style: TextStyle(fontSize: 30),
                                              style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w900,
                                                fontSize: 30.0,
                                                color: Color(0XFF205DA2),
                                                //decoration:TextDecorationStyle.
                                              ),
                                            ),
                                            Text(
                                              "Sign up for this mailing list to get support\n",
                                              textAlign: TextAlign.center,
                                              // style: TextStyle(fontSize: 30),
                                              style: TextStyle(
                                                fontFamily: 'Poppins',
                                                //fontWeight: FontWeight.bold,
                                                fontSize: 18.0,
                                                color: Color(0XFF205DA2),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 30.0),
                                    //Email Section
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 80.0),
                                      child: TextFormField(
                                        controller: emailController,

                                        validator: MultiValidator(
                                          [
                                            RequiredValidator(
                                              errorText:
                                                  "Please enter yout mail",
                                            ),
                                            EmailValidator(
                                              errorText:
                                                  "Please enter a valid email address",
                                            ),
                                          ],
                                        ),
                                        // update the state variable when the text changes
                                        onChanged: (text) {
                                          setState(() {
                                            email = text;
                                          });
                                        },
                                        decoration: const InputDecoration(
                                          labelText: 'Enter your Mail',
                                          border: OutlineInputBorder(),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 30.0),
                                    //Username Section
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 80.0),
                                      child: TextFormField(
                                        controller: nameController,
                                        validator: MultiValidator([
                                          RequiredValidator(
                                              errorText:
                                                  "Please enter your username"),
                                          MinLengthValidator(4,
                                              errorText:
                                                  "Username must contain at least 4 characters"),
                                          MaxLengthValidator(15,
                                              errorText:
                                                  "Username cannot be more 15 characters"),
                                        ]),
                                        onChanged: (value) {
                                          setState(() {
                                            names!.add(value);
                                          });
                                        },
                                        //autofocus: false,
                                        decoration: const InputDecoration(
                                          labelText: 'Enter your Name',
                                          border: OutlineInputBorder(),
                                          focusColor: Color(0XFFDC3131),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 30.0),
                                    // //Register Button
                                    // GestureDetector(
                                    // onTap: () {
                                    //   //emailController.
                                    //   //print('add email to emails list');
                                    //   //email = emailController.text;
                                    //   emails!.add(email!);
                                    //   names!.add(name!);
                                    //   print(emails);
                                    //   print(names);
                                    // },
                                    // onTap: () {
                                    //   emails!.add(emailController.text);
                                    //   print(emails);
                                    //   emailController.clear();
                                    //   print('emails list after clearing');
                                    //   print(emails);
                                    //   //if(){},
                                    // ScaffoldMessenger.of(context).showSnackBar(
                                    //   const SnackBar(
                                    //     content: Text("Form Filled"),
                                    //     duration: Duration(milliseconds: 2000),
                                    //   ),
                                    // );
                                    // },
                                    //   onTap: submit(),
                                    //   child: Container(
                                    //     width: 140.0,
                                    //     height: 40.0,
                                    //     decoration: BoxDecoration(
                                    //       color: const Color(0XFF205DA2),
                                    //       borderRadius: BorderRadius.circular(30.0),
                                    //       // color: Colors.grey.shade200.withOpacity(0.5),
                                    //     ),
                                    //     child: const Center(
                                    //       child: Text(
                                    //         "Submit",
                                    //         textAlign: TextAlign.center,
                                    //         style: TextStyle(
                                    //           fontFamily: 'Poppins',
                                    //           fontWeight: FontWeight.bold,
                                    //           fontSize: 16.0,
                                    //           color: Colors.white,
                                    //         ),
                                    //       ),
                                    //     ),
                                    //   ),
                                    // ),

                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        primary: const Color(
                                            0XFF205DA2), // background
                                        //onPrimary: Colors.white, // foreground
                                        shape: const StadiumBorder(),
                                      ),
                                      onPressed: () {
                                        // setState(() {

                                        //   //emailController.
                                        //   // ScaffoldMessenger.of(context)
                                        //   //     .showSnackBar(
                                        //   //   const SnackBar(
                                        //   //     content: Text(
                                        //   //       "Your Response has been recorded",
                                        //   //     ),
                                        //   //     duration:
                                        //   //         Duration(milliseconds: 2000),
                                        //   //   ),
                                        //   //   );
                                        // });
                                        emails!.add(email!);
                                        emailController.clear();
                                        if (formKey.currentState!.validate()) {
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(
                                            const SnackBar(
                                              content: Text(
                                                "Your Response has been recorded...We'll get back in a bit",
                                              ),
                                              duration:
                                                  Duration(milliseconds: 2000),
                                            ),
                                          );
                                        }
                                        print(emails);
                                      },
                                      child: const Padding(
                                        padding: EdgeInsets.all(12.0),
                                        child: Text(
                                          'Submit',
                                          style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16.0,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      // style: ElevatedButton.styleFrom(
                                      //   shape: const StadiumBorder(),
                                      // ),
                                    ),
                                    // TextButton(
                                    //   onPressed: () {
                                    //     print(
                                    //         "questionController: ${emailController.text} ...... from text button");
                                    //     setState(() {
                                    //       email = emailController.text;
                                    //     });
                                    //   },
                                    //   child: Text("SETSTATE BUTTON"),
                                    // ),
                                    const SizedBox(height: 30.0),
                                  ],
                                ),
                              ),
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
