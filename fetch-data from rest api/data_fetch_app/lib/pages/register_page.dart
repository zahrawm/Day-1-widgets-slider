import 'package:data_fetch_app/components/my_buuton.dart';
import 'package:data_fetch_app/components/my_text_field.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmedpasswordController = TextEditingController();

  RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Icon(Icons.lock,
                  size: 72,
                  color: Theme.of(context).colorScheme.inversePrimary),
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              "Food Delivery App",
              style: TextStyle(
                  fontSize: 16,
                  color: Theme.of(context).colorScheme.inversePrimary),
            ),
            SizedBox(
              height: 25,
            ),
            MyTextField(
                controller: emailController,
                hintText: 'email',
                obscureText: false),
            SizedBox(
              height: 25,
            ),
            MyTextField(
                controller: passwordController,
                hintText: 'password',
                obscureText: true),
            SizedBox(
              height: 25,
            ),
            MyTextField(
                controller: confirmedpasswordController,
                hintText: 'password',
                obscureText: true),
            SizedBox(
              height: 25,
            ),
            MyButon(onTap: () {}, text: 'Sign in'),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Not a memeber'),
                  SizedBox(
                    width: 4,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      'Register Now',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
