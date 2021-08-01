
import 'package:flutter/material.dart';
class LoginPage extends StatelessWidget {
  const LoginPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
     child: Column(
       children: [
         Image.asset("assets/images/login.png", fit: BoxFit.cover,),
         Text(
           "Welcome",
           style: TextStyle(
             color: Colors.deepPurple,
             fontSize: 20,
             fontWeight: FontWeight.bold,
           ),
         ),
         SizedBox(
           height: 20.0,
         ),
         Padding(padding: 
         const EdgeInsets.symmetric(vertical: 30, horizontal: 60),
child :Column(
  children: [

 
         TextFormField(
           decoration: InputDecoration(
             hintText: "Enter User Name",
             labelText: "User Name",
           ),
         ),
    TextFormField(
      obscureText: true,
           decoration: InputDecoration(
             hintText: "Enter Password",
             labelText: "Password",
           ),
         ),
          SizedBox(
           height: 50.0,
         ),
         ElevatedButton(onPressed: (){
           print("hi umar")
         }, child: Text("Login")
         )
    ],
),
         ),
       ],
     ),
    );
  }
}