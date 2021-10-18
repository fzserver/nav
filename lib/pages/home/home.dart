// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:navneet/cubit/login_cubit.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 10,
            ),
            TextFormField(
              controller: email,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Email",
                alignLabelWithHint: true,
                prefixIcon: Icon(Icons.person),
                labelStyle:
                    TextStyle(fontSize: 16.0, fontWeight: FontWeight.normal),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              controller: password,
              inputFormatters: [LengthLimitingTextInputFormatter(6)],
              decoration: InputDecoration(
                labelText: "Password",
                alignLabelWithHint: true,
                prefixIcon: Icon(Icons.person),
                labelStyle:
                    TextStyle(fontSize: 16.0, fontWeight: FontWeight.normal),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            MaterialButton(
              onPressed: () {
                BlocProvider.of<LoginCubit>(context).validateLogin(
                    email: email.text,
                    password: password.text,
                    context: context);
              },
              child: Text('Login'),
              color: Colors.pink,
              textColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
