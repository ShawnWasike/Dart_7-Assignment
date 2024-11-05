import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple UI App',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Simple App'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.blue[100],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                'Welcome to the App!',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                print('Button Clicked!');
              },
              child: Text('Click Me'),
            ),
            SizedBox(height: 20),
            Image.network(
              'https://media.istockphoto.com/id/1056445350/photo/neon-sign-on-brick-wall-background-welcome-3d-rendering.jpg?s=2048x2048&w=is&k=20&c=NfGmknhGJGecBtRvuoNBFIv9bblPYRcHB6DxKa3dXn0=',
              width: 150,
              height: 150,
            ),
            SizedBox(height: 40),
            LoginForm(),
          ],
        ),
      ),
    );
  }
}

class LoginForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          decoration: InputDecoration(
            labelText: 'Username',
            border: OutlineInputBorder(),
          ),
        ),
        SizedBox(height: 10),
        TextField(
          obscureText: true,  // Moved here
          decoration: InputDecoration(
            labelText: 'Password',
            border: OutlineInputBorder(),
          ),
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {
                print('Login clicked!');
              },
              child: Text('Login'),
            ),
            ElevatedButton(
              onPressed: () {
                print('Register clicked!');
              },
              child: Text('Register'),
            ),
          ],
        ),
      ],
    );
  }
}
