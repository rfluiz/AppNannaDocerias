import 'package:flutter/material.dart';
import 'package:loja_virtual/tabs/home_tab.dart';
import 'package:loja_virtual/tabs/products_tab.dart';
import 'package:loja_virtual/widgets/custom_drawer.dart';

class HomeScreen extends StatelessWidget {

  final _pageController = PageController();


  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _pageController,
      physics: NeverScrollableScrollPhysics(),
      children: <Widget>[
          Scaffold(
            body: HomeTab(),
            drawer: CustomDrawer(_pageController),
          ),
        Scaffold(
          appBar: AppBar(
            title: Text("Produtos"),
            backgroundColor: Color.fromARGB(255, 253, 203, 110),
            centerTitle: true,
          ),
          drawer: CustomDrawer(_pageController),
          body: ProductsTab(),
        )
      ],
    );
  }
}