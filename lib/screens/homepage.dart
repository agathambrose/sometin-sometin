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
              Widget content = Container();
              if (index == 0) {
                content = _balanceView();
              } else if (index == 1) {
                content = _discountView();
              } else if (index == 2) {
                content = _anotherView();
              }
              return content;
            }));
  }

  Widget _discountView() {
    return Container(
      child: ListTile(
        title: Text("discount view"),
      ),
    );
  }

  Widget _anotherView() {
    return Container(
      child: ListTile(
        title: Text("another view"),
      ),
    );
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
              Text(
                "GHS 10.00",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              //Use expanded for the spacing instead of the padding wdiget
              Padding(
                padding: EdgeInsets.only(top: 16),
                child: Text(
                  "Buy gift voucher",
                  style: TextStyle(
                      color: primaryColor, fontWeight: FontWeight.w600),
                ),
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
