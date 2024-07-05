import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepagetState();
}

class _HomepagetState extends State<Homepage> {
  String refrenceId="":
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar:AppBar(title:const Text("khalti payment")),
    body: Center(child: Column(
        mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ElevatedButton(onPressed: (){}, child: const Text("Pay with Khalti"))
      ],
    )),
    );
  }
}
