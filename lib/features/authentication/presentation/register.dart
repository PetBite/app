import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  static const routeName = '/register';

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _usernameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 35,
        ),
        children: <Widget>[
          const SizedBox(height: 50),
          const Text(
            'Register',
            style: TextStyle(fontSize: 30),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 10),
          Text(
            'Create your account',
            style:
                TextStyle(fontSize: 15, color: Colors.black.withOpacity(0.6)),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 50),
          TextField(
            controller: _usernameController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Username',
            ),
          ),
          const SizedBox(height: 20),
          TextField(
            controller: _emailController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Email',
            ),
          ),
          const SizedBox(height: 20),
          TextField(
            controller: _passwordController,
            obscureText: true,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Password',
            ),
          ),
          const SizedBox(height: 20),
          TextField(
            controller: _phoneController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Phone',
            ),
          ),
          Row(
            children: [
              Checkbox(
                value: true,
                onChanged: (value) {},
              ),
              const Expanded(
                child: Text(
                  'I have read and agreeed to the Terms and Conditions',
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Align(
            alignment: Alignment.center,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/404');
              },
              style: ElevatedButton.styleFrom(
                shape: const StadiumBorder(),
                padding:
                    const EdgeInsets.symmetric(horizontal: 130, vertical: 16),
              ),
              child: const Text(
                'Register',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Already have an account?'),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/');
                },
                child: const Text('Login Here'),
              ),
            ],
          ),
        ],
      )),
    );
  }
}
