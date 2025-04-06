import 'package:flutter/material.dart';
import 'package:flutter_clon1/constants/assets.dart';
import 'package:flutter_clon1/models/categoria_modelos.dart';
import 'package:flutter_svg/flutter_svg.dart';



class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<CategoriaModel> categorias = [];

  void _getCategorias() {
    categorias = CategoriaModel.getCategorias();
  }

  @override
  Widget build(BuildContext context) {
    _getCategorias();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppBarPersonalizado(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        _searchField(),
        SizedBox(height: 40),
        _categoriasSeccion(),
      ],),
    );
  }

  Column _categoriasSeccion() {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              'Categoría',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(height: 15),
          Container(
            height: 120,
            child: ListView.separated(
              itemCount: categorias.length,
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              separatorBuilder: (context, index) => SizedBox(width: 25),
              itemBuilder: (context, index) {
                return Container(
                  width: 100,
                  decoration: BoxDecoration(
                    color: categorias[index].boxColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: SvgPicture.asset(
                            categorias[index].iconPath,
                            height: 20,
                            width: 20,
                          ),
                        ),
                      ),
                      Text(
                        categorias[index].name,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                );
              },
            )
          ),
        ],
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

AppBar _buildAppBarPersonalizado() {  // 👈 Método público (sin "_")
  return AppBar(
    title: const Text(
      'Desayuno',
      style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
    ),
    centerTitle: true,
    backgroundColor: Colors.white,
    elevation: 0,
    leading: Container(
      margin: const EdgeInsets.all(10),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: const Color(0xFFF7F8F8),
        borderRadius: BorderRadius.circular(10),
      ),
      child: SvgPicture.asset(
        AppAssets.arrowLeft,
        height: 20,
        width: 20,
      ),
    ),
    actions: [
      GestureDetector(
        onTap: () {},
        child: Container(
          margin: const EdgeInsets.all(10),
          width: 37,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: const Color(0xFFF7F8F8),
            borderRadius: BorderRadius.circular(10),
          ),
          child: SvgPicture.asset(
            AppAssets.dots,
            height: 4,
            width: 4,
          ),
        ),
      ),
    ],
  );
}
