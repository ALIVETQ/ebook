import 'package:ebook/signup.dart';
import 'package:flutter/material.dart';

import 'drawer.dart';

class loginscreen extends StatefulWidget {
  const loginscreen({super.key});

  @override
  State<loginscreen> createState() => _loginscreenState();
}

class _loginscreenState extends State<loginscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 20,
          ),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            CircleAvatar(
              radius: 140,
              backgroundImage: AssetImage(
                "images/tan2004.png",
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 25,
                bottom: 20,
              ),
              child: const Text(
                'LogIn Now ',
                style: TextStyle(color: Colors.white,
                    fontSize: 22),
              ),
            ),
            const Text(
              'To enhance your journey with ASPER',
              style: TextStyle(color: Colors.white,
                  fontSize: 16),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                color: Color(0xffFFD700),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: TextFormField(style: TextStyle(
                    color: Colors.black
                ),
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Username', hintStyle: TextStyle(color: Colors.black45)
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                color: Color(0xffFFD700),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: TextFormField(style: TextStyle(
                    color: Colors.black
                ),
                  obscureText: true,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Password',
                      hintStyle: TextStyle(color: Colors.black45)
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 20,
                bottom: 20,
              ),
              child: Align(
                alignment: Alignment.centerLeft,
                child: InkWell(
                  onTap: () {},
                  child: const Text(
                    'forgot password',
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                  child: MaterialButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(150),
                    ),
                    color: Color(0xffFFD700),
                    onPressed: () {},
                    child: const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text('LOGIN',style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                )
              ],
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'dont have an account ',
                  style: TextStyle(color: Colors.white),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => signupscreen()));
                    },
                    child: const Text(
                      'Register',
                      style: TextStyle(
                        color: Colors.red,
                      ),
                    ))
              ],
            )
          ]),
        ),
      ),

    );
  }
}
