import 'package:flutter/material.dart';
import 'package:yaya_food/widgets/textField.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: CtextField(hint: 'botton2'),
      ),
    );
  }
}
