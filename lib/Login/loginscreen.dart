import 'package:flutter/material.dart';
import 'package:login/main.dart';


class loginscreen extends StatefulWidget {
  @override
  _loginscreenState createState() => _loginscreenState();
}

class _loginscreenState extends State<loginscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],

      // appbar widget
      appBar: AppBar(
        title: Center(
          child: Text(
            'Login',
            style: TextStyle(
              color:Colors.white,
              fontSize: 26.0,
            ),
          ),
        ),
        backgroundColor: Colors.blueAccent[100],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
        bottom: Radius.circular(20),
        ),
      ),
      toolbarHeight: 100.0,
      ),

      // body widget

      body: ListView(
        children:[
        Column(
        children: [
          SizedBox(height:60.0),
          Icon(Icons.account_circle,size: 50.0,color: Colors.grey[600],),
          Center(child: Container(margin: const EdgeInsets.all(15.0),
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                border: Border.all(color: Colors.grey,width: 1.5),
                borderRadius: BorderRadius.all(
              Radius.circular(10.0)
            ),
                ),
                      child: TextField(
                        obscureText: false,
                        decoration: InputDecoration(
                          fillColor:Colors.black,
                          border: OutlineInputBorder(),
                          labelText: 'Enter Username',
                       ),
                      ),
          )),
          Center(child: Container(
            margin: const EdgeInsets.all(15.0),
            padding: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
            border: Border.all(color: Colors.grey, width: 1.5),
            borderRadius: BorderRadius.all(
              Radius.circular(10.0)
            ),
            ),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Enter Password',
                       ),
                      ),
          )
          ),
          RaisedButton.icon(onPressed: (){
            Navigator.pushNamed(context, '/home');
          }, 
          icon: Icon(Icons.login_rounded), 
          label: Padding(
            padding: const EdgeInsets.fromLTRB(20.0,5.0,52.0,5.0),
            child: Text('Login', style: TextStyle(
              letterSpacing: 2.0,
            ),),
          ),
          color: Colors.blue[200],
          
          ),
          Divider(
              color: Colors.black,
              indent: 70.0,
              endIndent: 60.0,
            ),
            SizedBox(height:2.0),
          Text('Don\'t have an account? Create one', 
          style: TextStyle(
            color:Colors.black,
            fontWeight: FontWeight.w300 ,
          ),),
          SizedBox(height:10.0),
          RaisedButton.icon(onPressed: (){
            Navigator.pushNamed(context, '/account');
          }, 
          icon: Icon(Icons.create_outlined), 
          label: Padding(
            padding: const EdgeInsets.fromLTRB(0.0,12.0,0.0,12.0),
            child: Text('Create an account'),
          ),
          color: Colors.blue[200],
          ),
          SizedBox(height:10.0),
          Text('OR'),
         Row(
           children: [
             SizedBox(width:140.0),
             IconButton(
              icon: Image.asset('Images/google.png'),
              iconSize: 40,
              onPressed: () {
                
              },
              ),
            IconButton(
              icon: Image.asset('Images/facebook.png'),
              iconSize: 38,
              onPressed: () {},
              ),
           ],
         )
        ],
      ),
      ]
      )
    );
  }
}