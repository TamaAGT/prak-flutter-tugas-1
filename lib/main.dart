import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Login Page',
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Screen'),
      ),
      body:  SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 18.0),
          children: <Widget>[
            Column(
                children: const <Widget>[
                  SizedBox(height: 200,),
                  FlutterLogo(),
                ]
            ),
            SizedBox(height: 70.0,),
            TextField(
              decoration: InputDecoration(
                labelText: 'E-mail',
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
            ),
            const SizedBox(height: 20.0,),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
            ),
            const SizedBox(height: 20.0,),
            Column(
              children: <Widget>[
                ButtonTheme(
                  height: 50,
                  child: ElevatedButton(
                    //disabledElevation: 2.0,
                    onPressed: null,
                    child:  Text('Login',style:TextStyle(color: Colors.white)),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueAccent,
                        padding: EdgeInsets.symmetric(horizontal: 100, vertical: 10),
                        textStyle: const TextStyle(
                          fontSize: 20,
                        )),
                  ),
                ),
                const SizedBox(height: 20.0,),
                const Text('Forgot Password?'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}