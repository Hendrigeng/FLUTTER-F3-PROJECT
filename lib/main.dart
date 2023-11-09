import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:provider/provider.dart';
import 'package:courseflutter/view/dashbord.dart';
import 'package:courseflutter/view/login.dart';
import 'package:courseflutter/view/profile.dart';
import 'package:courseflutter/view/welcom.dart';
import 'package:courseflutter/viewmodel/viewmodel.dart';


void main() {
  runApp(
      ChangeNotifierProvider(create: (context)=>  ViewModel(),child: myapp(), )
  );

}

class myapp extends StatelessWidget {
  myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: app(),
    );
  }
}


