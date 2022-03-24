import 'package:flutter/material.dart';
import 'package:qlorian_app/pages/create_account.dart';
import 'package:qlorian_app/widgets/appbar.dart';

import '../classes/methods.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final controllerConfirmPassword = TextEditingController();
  final controllerPassword = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    controllerConfirmPassword.dispose();
    controllerPassword.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    IconData lockOutline = const IconData(0xe3b1, fontFamily: 'MaterialIcons');

    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: CustomAppBar(),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 15),
            Padding(
              padding: EdgeInsets.only(left: size.width * 15 / size.width),
              child: Row(
                children: [
                  SizedBox(
                    height: size.height * 25 / size.height,
                    child: AspectRatio(
                      aspectRatio: 1,
                      child: Container(
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage('assets/images/waving.png')),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 5),
                  Text(
                    'Hello,',
                    style: TextStyle(
                        fontSize: size.height * 18 / size.height,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.only(left: size.width * 15 / size.width),
              child: Row(
                children: [
                  Text(
                    'Are you new Here?',
                    style: TextStyle(
                        fontSize: size.height * 18 / size.height,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            const SizedBox(height: 15),
            Padding(
              padding: EdgeInsets.only(left: size.width * 15 / size.width),
              child: Row(
                children: [
                  Text(
                    'If you have an account / ',
                    style: TextStyle(
                        fontSize: size.height * 15 / size.height,
                        color: const Color(0xff9E9E9E)),
                  ),
                  GestureDetector(
                    onTap: () {
                      debugPrint('login');
                    },
                    child: Text(
                      'Login',
                      style: TextStyle(
                          fontSize: size.height * 15 / size.height,
                          color: const Color(0xff9E9E9E),
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: size.height * 670 / size.height,
              width: size.width * 1440 / size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(200 * 30 / 200),
                color: Colors.white,
              ),
              child: SingleChildScrollView(
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding:
                            EdgeInsets.only(left: size.width * 25 / size.width),
                        child: Row(
                          children: [
                            Text(
                              'Full Name',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: size.width * 50 / 1440),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: size.width * 25 / size.width,
                            right: size.width * 25 / size.width),
                        child: TextFormField(
                          validator: (value) => Methods().validateName(value),
                          decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                  borderSide: const BorderSide(
                                    color: Color(0xff918AE2),
                                  )),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                  borderSide: const BorderSide(
                                    color: Color(0xff918AE2),
                                  )),
                              prefixIcon: const Icon(
                                Icons.account_circle_rounded,
                                color: Color(0xff918AE2),
                              )),
                        ),
                      ),
                      const SizedBox(height: 30),
                      Padding(
                        padding:
                            EdgeInsets.only(left: size.width * 25 / size.width),
                        child: Row(
                          children: [
                            Text(
                              'E-mail',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: size.width * 50 / 1440),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: size.width * 25 / size.width,
                            right: size.width * 25 / size.width),
                        child: TextFormField(
                          validator: (value) => Methods().validateEmail(value),
                          decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                  borderSide: const BorderSide(
                                    color: Color(0xff918AE2),
                                  )),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                  borderSide: const BorderSide(
                                    color: Color(0xff918AE2),
                                  )),
                              prefixIcon: const Icon(
                                Icons.email_outlined,
                                color: Color(0xff918AE2),
                              )),
                        ),
                      ),
                      const SizedBox(height: 30),
                      Padding(
                        padding:
                            EdgeInsets.only(left: size.width * 25 / size.width),
                        child: Row(
                          children: [
                            Text(
                              'Password',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: size.width * 50 / 1440),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: size.width * 25 / size.width,
                            right: size.width * 25 / size.width),
                        child: TextFormField(
                          controller: controllerPassword,
                          validator: (value) =>
                              Methods().validatePassword(value),
                          obscureText: true,
                          decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                  borderSide: const BorderSide(
                                    color: Color(0xff918AE2),
                                  )),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                  borderSide: const BorderSide(
                                    color: Color(0xff918AE2),
                                  )),
                              prefixIcon: Icon(
                                lockOutline,
                                color: const Color(0xff918AE2),
                              )),
                        ),
                      ),
                      const SizedBox(height: 30),
                      Padding(
                        padding:
                            EdgeInsets.only(left: size.width * 25 / size.width),
                        child: Row(
                          children: [
                            Text(
                              'Confirm Password',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: size.width * 50 / 1440),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: size.width * 25 / size.width,
                            right: size.width * 25 / size.width),
                        child: TextFormField(
                          controller: controllerConfirmPassword,
                          validator: (value) => Methods()
                              .confirmPassword(controllerPassword.text, value),
                          obscureText: true,
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15.0),
                                borderSide: const BorderSide(
                                  color: Color(0xff918AE2),
                                )),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15.0),
                                borderSide: const BorderSide(
                                  color: Color(0xff918AE2),
                                )),
                            prefixIcon: Icon(
                              lockOutline,
                              color: const Color(0xff918AE2),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 55,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: size.width * 25 / size.width,
                            right: size.width * 25 / size.width),
                        child: Row(
                          children: [
                            Expanded(
                              child: SizedBox(
                                height: size.height * 40 / size.height,
                                child: ElevatedButton(
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all<Color>(
                                              const Color(0xff918AE2)),
                                      shape: MaterialStateProperty.all<
                                              RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                              side: const BorderSide(
                                                  color: Color(0xff918AE2))))
                                      // foreground
                                      ),
                                  onPressed: () {
                                    if (_formKey.currentState!.validate()) {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const CreateAccount()));
                                    }
                                  },
                                  child: const Text('Sign Up'),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
