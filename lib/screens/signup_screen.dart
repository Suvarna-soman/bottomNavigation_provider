import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController usernameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController pwdController = TextEditingController();
  TextEditingController conpwdController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SignUp Screen"),
        centerTitle: true,
      ),
      body: CustomScrollView(
        slivers: [
          SliverPadding(
            padding: const EdgeInsets.all(16.0),
            sliver: SliverList(
              delegate: SliverChildListDelegate(
                [
                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        const SizedBox(height: 15.0),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                              keyboardType: TextInputType.text,
                              controller: usernameController,
                              decoration: InputDecoration(
                                label: const Text("UserName"),
                                prefixIcon: const Icon(Icons.person),
                                hintText: 'Enter your name',
                                border: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Colors.red,
                                    width: 1,
                                    style: BorderStyle.solid,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter your name';
                                }
                                return null;
                              }
                              ),
                        ),

                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                              keyboardType: TextInputType.emailAddress,
                              controller: emailController,
                              decoration: InputDecoration(
                                label: const Text("Email"),
                                prefixIcon: const Icon(Icons.email),
                                hintText: 'Enter your email',
                                border: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Colors.red,
                                    width: 1,
                                    style: BorderStyle.solid,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  'Please enter an email address';
                                } else if (!value.contains('@')) {
                                  'Invalid email address';
                                }
                              }),
                        ),

                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            keyboardType: TextInputType.text,
                            controller: pwdController,
                            decoration: InputDecoration(
                              label: const Text("Password"),
                              prefixIcon: const Icon(Icons.password),
                              hintText: 'Enter your password',
                              border: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Colors.red,
                                  width: 1,
                                  style: BorderStyle.solid,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter a password';
                              } else if (value.length < 8) {
                                return 'Password must be at least 8 characters';
                              } else if (!value.contains(RegExp(r'[A-Z]'))) {
                                return 'Password must contain at least one capital letter';
                              } else if (!value.contains(
                                  RegExp(r'[!@#\$%^&*()_+{}|:;<>,.?~]'))) {
                                return 'Password must contain at least one special character';
                              }
                              return null;
                            },
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            keyboardType: TextInputType.text,
                            controller: conpwdController,
                            decoration: InputDecoration(
                              label: const Text("confirm Password"),
                              prefixIcon: const Icon(Icons.password),
                              hintText: 'Enter your confirm password',
                              border: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Colors.red,
                                  width: 1,
                                  style: BorderStyle.solid,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please confirm your password';
                              } else if (value != pwdController.text) {
                                return 'Passwords do not match';
                              }
                              return null;
                            },
                          ),
                        ),

                        ElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              Navigator.of(context).pushNamed('/detail');
                            }
                          },
                          child: const Text("Submit"),
                        ),

                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
