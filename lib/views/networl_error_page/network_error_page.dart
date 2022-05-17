import 'package:flutter/material.dart';

class NetworkErrorPage extends StatelessWidget {
  const NetworkErrorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Image.asset("assets/gif/ic_network_error.gif"),)
        ],
      ),
    );
  }
}
