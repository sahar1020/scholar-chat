import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:scholar_chat_setup/pages/chat_page.dart';
import 'package:scholar_chat_setup/pages/login_page.dart';
import 'package:scholar_chat_setup/pages/register_page.dart';

import 'firebase_options.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(const ScholarChat());
}

class ScholarChat extends StatelessWidget {
  const ScholarChat({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        'loginPage':(context)=>LoginPage(),
        RigesterPage.id:(context)=>RigesterPage(),
        ChatPage.id:(context)=>ChatPage(),
      },
      initialRoute: 'loginPage',
    );
  }
}
