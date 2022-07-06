import 'package:flutter/material.dart';
import 'package:persefone/theme/colors/light_colors.dart';

class MyBackButton extends StatelessWidget {
  final VoidCallback funcao;

  MyBackButton({this.funcao = null});

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'backButton',
        child: GestureDetector(
        onTap: this.funcao != null ? funcao : (){
          Navigator.pop(context);
        },
          child: Align(
          alignment: Alignment.centerLeft,
          child: Icon(
            Icons.arrow_back_ios,
            size: 25,
            color: LightColors.kDarkBlue,
          ),
        ),
      ),
    );
  }
}