
import 'package:flutter/material.dart';
import 'package:main_chat_portfolio/reusable_widgets/inputDecoration.dart';

class SignIn extends StatefulWidget {

  final Function toggle;
  const SignIn(this.toggle);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black,
      appBar: mainAppBar(context),
      body: Container(
        alignment: Alignment.bottomCenter,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                decoration: textFieldInputDecoration('Email'),
                style: textStyle(),
              ),
              TextField(
                decoration: textFieldInputDecoration('Password'),
                style: textStyle(),
              ),
              const SizedBox(height: 10,),
              Container(
                alignment: Alignment.centerRight,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                  child: Text('Forgot Password?', style: textStyle()),
                ),
              ),
              const SizedBox(height: 10,),
              Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.symmetric(vertical: 16),
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [
                      Colors.blue,
                      Colors.white54
                    ],
                  ),
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Text('Sign In', style: textStyle(),),
              ),
              const SizedBox(height: 10,),
              Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.symmetric(vertical: 16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(40),
                ),
                child: const Text('Sign In With Google', style: TextStyle(color: Colors.black,fontSize: 17)),
              ),
              const SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:  [
                  const Text('Don\'t have an account?  ', style: TextStyle(color: Colors.white,fontSize: 17),),
                  GestureDetector(
                    onTap: (){
                      widget.toggle();
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                        child: const Text('Register now', style: TextStyle(color: Colors.white,fontSize: 17,decoration: TextDecoration.underline))),
                  ),
                ],
              ),
              const SizedBox(height: 50,),
            ],
          ),
        ),
      ),
    );
  }
}
