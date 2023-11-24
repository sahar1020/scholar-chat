import 'package:flutter/material.dart';
import 'package:scholar_chat_setup/constants.dart';

class ChatPage extends StatelessWidget {
 
static String id='ChatPage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor  ,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
         children: [
           Image.asset(kLogo,height: 50,),
           Text('chat'),
         ],
        ),
        centerTitle: true,
      ),
    );
  }
}