
import 'package:flutter/material.dart';
import 'package:main_chat_portfolio/reusable_widgets/inputDecoration.dart';

class SearchUser extends StatefulWidget {
  const SearchUser({Key? key}) : super(key: key);

  @override
  _SearchUserState createState() => _SearchUserState();
}

class _SearchUserState extends State<SearchUser> {


  TextEditingController searchUser= TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:mainAppBar(context),
      body: Container(
        child: Column(
          children: [
            Container(
              color: Colors.grey,
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
              child: Row(
                children: [
                   Expanded(// to use the available space
                      child: TextField(
                        controller: searchUser,
                        style: const TextStyle(color: Colors.white54),
                        decoration: const InputDecoration(
                          hintText: 'Search UserName',
                          hintStyle: TextStyle(color: Colors.white54),
                          border: InputBorder.none,
                        ),
                      )
                  ),
                   const Icon(Icons.search, size: 30,),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
