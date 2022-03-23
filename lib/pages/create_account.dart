import 'package:flutter/material.dart';

import '../methods.dart';
import '../widgets/appbar.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({Key? key}) : super(key: key);

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  String? value;

  @override
  Widget build(BuildContext context) {
    final controllerName = TextEditingController();
    final controllerCPF = TextEditingController();
    final controllerRG = TextEditingController();
    final controllerphone = TextEditingController();

    final menuItems = ['Brazil', 'Argentina', 'Portugal', 'United States'];

    final size = MediaQuery.of(context).size;

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
                              image: AssetImage('assets/images/smile.png')),
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
                      padding:
                          EdgeInsets.only(top: size.height * 35 / size.height),
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
                                    image:
                                        AssetImage('assets/images/picture.jpg'),
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
                      child: Form(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        child: TextFormField(
                          controller: controllerName,
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
                      child: Form(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        child: TextFormField(
                          controller: controllerCPF,
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
                      child: Form(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        child: TextFormField(
                          controller: controllerRG,
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
                      child: Form(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        child: TextFormField(
                          controller: controllerphone,
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
                      child: Form(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        child: SizedBox(
                          height: size.height * 55 / size.height,
                          child: InputDecorator(
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15.0),
                                borderSide: const BorderSide(
                                  color: Color(0xff918AE2),
                                ),
                              ),
                            ),
                            child: DropdownButtonHideUnderline(
                              child: Stack(
                                children: [
                                  DropdownButton<String>(
                                    isExpanded: true,
                                    value: value,
                                    items:
                                        menuItems.map(buildMenuItem).toList(),
                                    onChanged: (value) =>
                                        setState(() => this.value = value),
                                  ),
                                ],
                              ),
                            ),
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
                                onPressed: () {},
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
    );
  }

  DropdownMenuItem<String> buildMenuItem(String item) => DropdownMenuItem(
        value: item,
        child: Text(
          item,
          style: const TextStyle(
            fontSize: 380 * 50 / 1440,
            color: Color(0xff9E9E9E),
            fontWeight: FontWeight.bold,
          ),
        ),
      );
}
