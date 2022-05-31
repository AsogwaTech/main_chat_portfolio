
import 'package:flutter/material.dart';
import 'package:main_chat_portfolio/helper/auth_help.dart';
import 'package:main_chat_portfolio/services/auth.dart';
import 'package:main_chat_portfolio/views/search.dart';
//import 'package:main_chat_portfolio/views/signin.dart';
//import 'package:main_chat_portfolio/reusable_widgets/inputDecoration.dart';

class ChatRoomScreen extends StatefulWidget {
  const ChatRoomScreen({Key? key}) : super(key: key);

  @override
  _ChatRoomScreenState createState() => _ChatRoomScreenState();
}

class _ChatRoomScreenState extends State<ChatRoomScreen> {

  Authenticate authenticate = Authenticate();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Let Chat'),
        actions: [
          GestureDetector(
            onTap: (){
             authenticate.signOut();
             Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>const AuthHelper())
             );
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 15),
                child: const Icon(Icons.exit_to_app),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => SearchUser()));
        },
        child: const Icon(Icons.search),
      ),
    );
  }
}
