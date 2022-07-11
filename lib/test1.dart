import 'package:basic_flutter/test2.dart';
import 'package:flutter/material.dart';

import 'menu.dart';

class Test01 extends StatefulWidget {
  const Test01({Key? key}) : super(key: key);

  @override
  State<Test01> createState() => _Test01State();
}

class _Test01State extends State<Test01> {
  String a = "";
  String b = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
              child: SingleChildScrollView(
        child: Column(
          children: [
            text1(),
            text2(),
            textformfield1(),
            textformfield2(),
            ElevatedButton(onPressed: creckme, child: const Text('Data')),
            
          ],
        ),
      ))),
    );
  }

  creckme(){
    if( a == 'fix' && b == '555'){
      Navigator.push(context, MaterialPageRoute(builder: (context) => const Menu()));
    }
  }

  TextFormField textformfield2() {
    return TextFormField(
        keyboardType: TextInputType.text,
        onChanged: (value) => b = value.trim());
  }

  TextFormField textformfield1() {
    return TextFormField(
      keyboardType: TextInputType.text,
      onChanged: (value) => a = value.trim(),
    );
  }

  Text text2() {
    return Text(
      b,
      style: const TextStyle(
          fontSize: 30, color: Color.fromARGB(253, 109, 22, 249)),
    );
  }

  Text text1() {
    return Text(
      a,
      style:
          const TextStyle(fontSize: 30, color: Color.fromRGBO(249, 22, 22, 2)),
    );
  }
}
