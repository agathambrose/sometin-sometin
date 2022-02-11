// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:something_something/constants/theme.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Somtin Replay"),
          centerTitle: true,
          backgroundColor: primaryColor,
        ),
        body: ListView.builder(
            itemCount: 4,
            itemBuilder: (BuildContext context, int index) {
              return _balanceView();
            }));
  }

  Widget _balanceView() {
    return Row(
      children: [
        Expanded(
            child: Container(
          padding: EdgeInsets.only(left: 16),
          child: (Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text("Total Gift Voucher Value"),
              Text("GHS 10.00"),
              Text(
                "Buy gift voucher",
                style: TextStyle(color: primaryColor),
              ),
            ],
          )),
        )),
        Icon(
          Icons.picture_in_picture_rounded,
          size: 80,
        )
      ],
    );
  }
}
