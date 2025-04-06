import 'package:flutter/material.dart';
import 'package:flutter_clon1/constants/assets.dart';

class CategoriaModel {
  String name;
  String iconPath;
  Color boxColor;

  CategoriaModel({
    required this.name,
    required this.iconPath,
    required this.boxColor,
  });

 static List<CategoriaModel> getCategorias() {
      List<CategoriaModel> categorias = [];

    categorias.add(
      CategoriaModel(
        name: 'Ensalada',
        iconPath: AppAssets.salmon,
        boxColor: Color(0xff92a3fd),
      ),
    );

        categorias.add(
      CategoriaModel(
        name: 'Pastel',
        iconPath: AppAssets.orange,
        boxColor: Color(0xffc58bf2),
      ),
    );

        categorias.add(
      CategoriaModel(
        name: 'Pai',
        iconPath: AppAssets.pie,
        boxColor: Color(0xff92a3fd),
      ),
    );

        categorias.add(
      CategoriaModel(
        name: 'Batido',
        iconPath: AppAssets.pancakes,
        boxColor: Color(0xffc58bf2)),
      
    );
      return categorias;
  }

}