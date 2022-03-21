import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final height;
  final width;

  const CustomAppBar({
    Key? key,
    this.height = 330,
    this.width = 1440,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(top: size.height * 15 / 330),
      child: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {},
        ),
      ),
    );
  }
}
