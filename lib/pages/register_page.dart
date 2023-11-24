import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

import '../constants.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_text_field.dart';
import 'chat_page.dart';

class RigesterPage extends StatefulWidget {
  RigesterPage({super.key});
  static String id = 'registerPage';

  @override
  State<RigesterPage> createState() => _RigesterPageState();
}

class _RigesterPageState extends State<RigesterPage> {
  String? email;

  String? password;

  bool isloding=false;

  GlobalKey<FormState> formkey=GlobalKey();

  @override
  Widget build(BuildContext context) {
    //  ModalProgressHUD(
    //   inAsyncCall:isloding ,
    //   child:
    return Scaffold(
        backgroundColor: kPrimaryColor,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Form(
            key: formkey,
            child: ListView(
              children: [
                const SizedBox(
                  height: 75,
                ),
                Image.asset(
                  "assets/images/scholar.png",
                  height: 100,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Scholar Chat",
                      style: TextStyle(
                        fontSize: 32,
                        color: Colors.white,
                        fontFamily: 'Pacifico-Regular',
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 75,
                ),
                Row(
                  children: [
                    Text(
                      "Register",
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                CostemTextFromField(
                  hintText: 'Email',
                  onChanged: (data) {
                    email = data;
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                CostemTextFromField(
                  hintText: 'Password',
                  onChanged: (data) {
                    password = data;
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomButton(
                  text: 'REGISTER',
                  ontap: () async {
                    if (formkey.currentState!.validate()) {
                      // isloding=true;
                      // setState(() {
                        
                      // });
      try {
      await registerUser();
        Navigator.pushNamed(context, ChatPage.id);
      } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
       showSnackBar(context, 'weak password');
      }else if(e.code == 'email-already-in-use') {
         showSnackBar(context, 'email already in use');
      }
      }
      // isloding=false;
      //  setState(() {
                        
      //                 });
                  
    }
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "already have an account?",
                      style: TextStyle(color: Colors.white),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        "  Login",
                        style: TextStyle(color: Color(0xffd2f4f1)),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      );
    
  }

  Future<void> registerUser() async {
    var auth = FirebaseAuth.instance;
    UserCredential user =
        await auth.createUserWithEmailAndPassword(
            email: email!, password: password!);
  }

  void showSnackBar(BuildContext context,String message){
 ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(message),
                      )

 );
  }
}
