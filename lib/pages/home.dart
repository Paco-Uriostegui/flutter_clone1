import 'package:flutter/material.dart';
import 'package:flutter_clon1/constants/assets.dart';
import 'package:flutter_clon1/main.dart';
import 'package:flutter_svg/flutter_svg.dart';



class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBarPersonalizado(),
      body: Column(
        children: [
        _searchField()
      ],),
    );
  }

  Container _searchField() {
    return Container(
        margin: EdgeInsets.only(top: 40, left: 20, right: 20),
        decoration: BoxDecoration(
          boxShadow: [BoxShadow(
            color: Colors.black.withOpacity(0.11),
            blurRadius: 40,
            spreadRadius: 0,
          )
      ]
      ),
        child: TextField(
          decoration: InputDecoration(
            hintText: 'Buscar',
            hintStyle: TextStyle(
              color: Colors.blueGrey,
              fontSize: 16,
            ),
            filled: true,
            fillColor: Colors.white,
            prefixIcon: Padding(
              padding: const EdgeInsets.all(12.0),
              child: SvgPicture.asset(
                AppAssets.search
              ),
            ),
            suffixIcon: IntrinsicHeight(
              child: Container(
                width: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    VerticalDivider(
                      color: Colors.black,
                      thickness: 0.1,
                      indent: 8,
                      endIndent: 8,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: SvgPicture.asset(
                        AppAssets.filter,
                        height: 20,
                        width: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide.none,
            ),
            contentPadding: EdgeInsets.all(15),
          ),),
      );
  }
}

