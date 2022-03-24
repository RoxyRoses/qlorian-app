import 'dart:ui';

import 'package:brasil_fields/brasil_fields.dart';
import 'package:easy_mask/easy_mask.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:qlorian_app/country.dart';
import 'package:qlorian_app/pages/signup_page.dart';

import '../classes/methods.dart';
import '../widgets/appbar.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({Key? key}) : super(key: key);

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  String? value;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    List<Map> _countries = [
      {'id': 1, 'name': 'Brazil', 'image': 'assets/images/brasil.png'},
    ];

    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: CustomAppBar(),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
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
                              image: AssetImage('assets/images/smile.png'),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 5),
                    Text(
                      'Setting up your',
                      style: TextStyle(
                          fontSize: size.height * 18 / size.height,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Padding(
                padding: EdgeInsets.only(left: size.width * 15 / size.width),
                child: Row(
                  children: [
                    Text(
                      'profile',
                      style: TextStyle(
                          fontSize: size.height * 18 / size.height,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15),
              Padding(
                padding: EdgeInsets.only(left: size.width * 15 / size.width),
                child: Row(
                  children: [
                    Text(
                      'Add your profile photo',
                      style: TextStyle(
                        fontSize: size.height * 15 / size.height,
                        color: const Color(0xff9E9E9E),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: size.height * 950 / size.height,
                width: size.width * 1440 / size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(200 * 30 / 200),
                  color: Colors.white,
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            top: size.height * 35 / size.height),
                        child: SizedBox(
                          height: size.height * 120 / size.height,
                          child: AspectRatio(
                            aspectRatio: 1,
                            child: Stack(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.circular(200 * 30 / 200),
                                    image: const DecorationImage(
                                      fit: BoxFit.fill,
                                      image: AssetImage(
                                          'assets/images/picture.jpg'),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      top: size.height * 75 / size.height,
                                      left: size.height * 75 / size.height),
                                  child: CircleAvatar(
                                    radius: 20,
                                    backgroundColor: const Color(0xff918AE2),
                                    child: IconButton(
                                      icon: const Icon(
                                        Icons.camera_alt,
                                        color: Colors.white,
                                      ),
                                      onPressed: () {},
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding:
                            EdgeInsets.only(left: size.width * 25 / size.width),
                        child: Row(
                          children: [
                            Text(
                              'Display Name',
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
                                ),
                              ),
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
                      const SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding:
                            EdgeInsets.only(left: size.width * 25 / size.width),
                        child: Row(
                          children: [
                            Text(
                              'CPF',
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
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly,
                            CpfInputFormatter()
                          ],
                          keyboardType: TextInputType.number,
                          validator: (value) => Methods().validateCPF(value),
                          decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15.0),
                                borderSide: const BorderSide(
                                  color: Color(0xff918AE2),
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                  borderSide: const BorderSide(
                                    color: Color(0xff918AE2),
                                  )),
                              prefixIcon: const Icon(
                                Icons.domain_verification,
                                color: Color(0xff918AE2),
                              )),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding:
                            EdgeInsets.only(left: size.width * 25 / size.width),
                        child: Row(
                          children: [
                            Text(
                              'RG',
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
                          inputFormatters: [
                            TextInputMask(mask: '99.999.999-9', reverse: false)
                          ],
                          keyboardType: TextInputType.number,
                          validator: (value) => Methods().validateRG(value),
                          decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15.0),
                                borderSide: const BorderSide(
                                  color: Color(0xff918AE2),
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                  borderSide: const BorderSide(
                                    color: Color(0xff918AE2),
                                  )),
                              prefixIcon: const Icon(
                                Icons.domain_verification,
                                color: Color(0xff918AE2),
                              )),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding:
                            EdgeInsets.only(left: size.width * 25 / size.width),
                        child: Row(
                          children: [
                            Text(
                              'Phone',
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
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly,
                            TelefoneInputFormatter()
                          ],
                          keyboardType: TextInputType.number,
                          validator: (value) => Methods().validatePhone(value),
                          decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15.0),
                                borderSide: const BorderSide(
                                  color: Color(0xff918AE2),
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                  borderSide: const BorderSide(
                                    color: Color(0xff918AE2),
                                  )),
                              prefixIcon: const Icon(
                                Icons.local_phone,
                                color: Color(0xff918AE2),
                              )),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding:
                            EdgeInsets.only(left: size.width * 25 / size.width),
                        child: Row(
                          children: [
                            Text(
                              'Country',
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
                        child: SizedBox(
                          height: size.height * 80 / size.height,
                          child: InputDecorator(
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15.0),
                                borderSide: const BorderSide(
                                  color: Color(0xff918AE2),
                                ),
                              ),
                            ),
                            child: Stack(
                              children: [
                                DropdownButtonFormField<String>(
                                  validator: (value) =>
                                      value == null ? 'field required' : null,
                                  decoration: const InputDecoration.collapsed(
                                      hintText: ''),
                                  isExpanded: true,
                                  hint: const Text('Select Country'),
                                  value: value,
                                  items: Item.countryList()
                                      .map(
                                          (e) => buildMenuItem(e.name, e.image))
                                      .toList(),
                                  onChanged: (value) =>
                                      setState(() => this.value = value),
                                ),
                              ],
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
                                              const SignUpPage(),
                                        ),
                                      );
                                    }
                                  },
                                  child: const Text('Confirm'),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  DropdownMenuItem<String> buildMenuItem(String item, String path) =>
      DropdownMenuItem(
        value: item,
        child: Row(
          children: [
            ClipOval(
              child: Image.asset(
                path,
                height: 30,
                width: 30,
                fit: BoxFit.fill,
              ),
            ),
            const SizedBox(width: 5),
            Text(
              item,
              style: const TextStyle(
                fontSize: 380 * 50 / 1440,
                color: Color(0xff9E9E9E),
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      );
}
