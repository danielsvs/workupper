import 'package:flutter/material.dart';
import 'package:workupper/app/app_module.dart';
import 'package:flutter_modular/flutter_modular.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';

void main() => runApp(ModularApp(module: AppModule()));


// ? Teste de banco de dados
/* 
void main() { runApp(ModularApp(module: AppModule()));

  Firestore.instance.collection('col').document('doc').setData({'data': 'content'});

}
*/
