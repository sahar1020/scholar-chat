import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:scholar_chat_setup/pages/register_page.dart';

import 'package:scholar_chat_setup/widgets/custom_text_field.dart';

import '../constants.dart';
import '../helper/show_snack_bar.dart';
import '../widgets/custom_button.dart';
import 'chat_page.dart';

class LoginPage extends StatefulWidget {
   LoginPage({super.key});


  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
   String? email;

  String? password;

   bool isloding=false;

  GlobalKey<FormState> formkey=GlobalKey();

  @override
  Widget build(BuildContext context) {
    return 
    // ModalProgressHUD(
    //   inAsyncCall: isloding,
    //   child:
     Scaffold(
        backgroundColor:kPrimaryColor,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Form(
            key: formkey,
            child: ListView(
              children: [
               const SizedBox(height: 75 ,),
                Image.asset("assets/images/scholar.png",height: 100,),
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
                 const SizedBox(height: 50 ,),
                Row(
                  children: [
                    Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
               const SizedBox(height: 20 ,),
                CostemTextFromField(
                  hintText: 'Email',
                    onChanged: (data) {
                    email = data;
                  },
                ),
                const SizedBox(height: 10 ,),
                CostemTextFromField(
                  hintText: 'Password',
                    onChanged: (data) {
                    email = data;
                  },
                ),
                const SizedBox(height: 20 ,),
                CustomButton(text: 'LOGIN',
                
                 ontap: () async {
                    if (formkey.currentState!.validate()) {
                      // isloding=true;
                      // setState(() {
                        
                      // });
      try {
      await loginUser();
       Navigator.pushNamed(context, ChatPage.id);
      } on FirebaseAuthException catch (e) {
      if (e.code == 'wrong-password') {
       showSnackBar(context, 'wrong password');
      }else if(e.code == 'user-not-found') {
         showSnackBar(context, 'user not found');
      }
      }
      // isloding=false;
      //  setState(() {
                        
      //                 });
                  
    }
                  },
               ),
                const SizedBox(height: 10 ,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "dont\'t have an account",
                      style: TextStyle(color: Colors.white),
                    ),
                     GestureDetector(
                      onTap: (){
                        Navigator.pushNamed(context, RigesterPage.id);
                      },
                       child: Text(
                        "  Register",
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



  Future<void> loginUser() async {
    var auth = FirebaseAuth.instance;
    UserCredential user =
        await auth.signInWithEmailAndPassword(
            email: email!, password: password!);
  }

 
}
