import 'package:flutter/material.dart';

class TextFormFieldDemo extends StatefulWidget {
  const TextFormFieldDemo({Key? key}) : super(key: key);

  @override
  State<TextFormFieldDemo> createState() => _TextFormFieldDemoState();
}

class _TextFormFieldDemoState extends State<TextFormFieldDemo> {
  TextEditingController emailcontroller = TextEditingController();

  TextEditingController passcontroller = TextEditingController();

  final formKey = GlobalKey<FormState>();

  String email = "raj123@gmail.com";
  String Pass = "Raj123@123";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                validator: (value) {
                  bool emailValid = RegExp(
                          "^[a-zA-Z0-9.!#\$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*\$")
                      .hasMatch(value!);

                  if (emailValid) {
                    return null;
                  } else {
                    return "Invalid Email Address";
                  }
                },
                controller: emailcontroller,
                decoration: InputDecoration(
                  hintText: "Email",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              SizedBox(height: 20),
              TextFormField(
                validator: (value) {
                  bool passValid = RegExp(
                          "^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}\$")
                      .hasMatch(value!);

                  if (passValid) {
                    return null;
                  } else {
                    return "Invalid Password";
                  }
                },
                controller: passcontroller,
                decoration: InputDecoration(
                  hintText: "Password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              SizedBox(height: 50),
              MaterialButton(
                height: 50,
                minWidth: 300,
                color: Colors.indigo,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Text(
                  "Log In",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    if (email == emailcontroller.text &&
                        Pass == passcontroller.text) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Center(
                            child: Text(
                              "Succesfull",
                              style: TextStyle(decoration: TextDecoration.none),
                            ),
                          ),
                        ),
                      );
                    } else {
                      if (email != emailcontroller.text &&
                          Pass != passcontroller.text) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text("Both is wrong"),
                          ),
                        );
                      } else if (Pass != passcontroller.text) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text("Password is wrong"),
                          ),
                        );
                      } else if (email != emailcontroller.text) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text("Email are wrong"),
                          ),
                        );
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text("Both are wrong"),
                          ),
                        );
                      }
                    }
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

//^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}\$

// class Textformdemo extends StatefulWidget {
//   const Textformdemo({Key? key}) : super(key: key);
//
//   @override
//   State<Textformdemo> createState() => _TextformdemoState();
// }
//
// class _TextformdemoState extends State<Textformdemo> {
//   TextEditingController userconroller = TextEditingController();
//   TextEditingController emailconroller = TextEditingController();
//   TextEditingController passlconroller = TextEditingController();
//
//   final formkey = GlobalKey<FormState>();
//   String email = "ajay";
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Form(
//         key: formkey,
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Center(
//               child: TextFormField(
//                 validator: (value) {
//                   bool emailValid = RegExp("[a-z]").hasMatch(value!);
//                 },
//                 controller: emailconroller,
//                 decoration: InputDecoration(
//                   hintText: "email",
//                   constraints: BoxConstraints(maxWidth: 300),
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                 ),
//               ),
//             ),
//             SizedBox(
//               height: 10,
//             ),
//             MaterialButton(
//               minWidth: 300,
//               height: 60,
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(10),
//               ),
//               child: Text(
//                 "LOG IN",
//                 style: TextStyle(color: Colors.white,),
//               ),
//               color: Colors.orange,
//               onPressed: () {
//                 if (formkey.currentState!.validate()) {
//                   if (email == emailconroller.text) {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) => Text("okkkk"),
//                       ),
//                     );
//                   } else {
//                     ScaffoldMessenger.of(context).showSnackBar(
//                       SnackBar(
//                         content: Text("invalid"),
//                       ),
//                     );
//                   }
//                 }
//                 ;
//               },
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
