import 'package:flutter/material.dart';

class EnquiriePage extends StatefulWidget {
  const EnquiriePage({super.key});

  @override
  State<EnquiriePage> createState() => _EnquiriePageState();
}

class _EnquiriePageState extends State<EnquiriePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Enquirie")),);
  }
}
