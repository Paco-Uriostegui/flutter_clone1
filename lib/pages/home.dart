import 'package:flutter/material.dart';
import 'package:flutter_clon1/main.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBarPersonalizado(),
    );
  }
}

