import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class Test02 extends StatefulWidget {
  const Test02({Key? key}) : super(key: key);

  @override
  State<Test02> createState() => _Test02State();
}

class _Test02State extends State<Test02> {
  double screen = 0;

  Future read() async {
    String url = "https://covid19.ddc.moph.go.th/api/Cases/today-cases-all";
    Response response = await Dio().get(url);
    return response.data;
  }

  @override
  Widget build(BuildContext context) {
    screen = MediaQuery.of(context).size.width;
    return Scaffold(
      body: FutureBuilder(
        future: read(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            //return Text(snapshot.data.toString());
            return Scaffold(
              body: SafeArea(
                  child: Center(
                child: SingleChildScrollView(
                  child: Column(children: [
                    Container(
                        padding: EdgeInsets.only(top: 10),
                        decoration: const BoxDecoration(color: Colors.red),
                        child: Text(snapshot.data[0]['total_case']
                            .toString(),
                            style: TextStyle(color: Colors.black.withOpacity(0.8),
                            fontSize: 50,
                            backgroundColor: const Color.fromARGB(0, 0, 165, 254))
                ),),]),
                ),
              )),
            );
          } else {
            return Center(
              child: Column(
                children: const <Widget>[
                  CircularProgressIndicator(),
                ],
              ),
            );
          }
        },
      ),
    );
  }
}
