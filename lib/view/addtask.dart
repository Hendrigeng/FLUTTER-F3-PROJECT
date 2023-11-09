import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:courseflutter/view/alertdailog.dart';
import 'welcom.dart';
import 'package:courseflutter/model/attributes.dart';
import 'package:provider/provider.dart';
import 'package:courseflutter/viewmodel/viewmodel.dart';

class addtask extends StatelessWidget {
  addtask({super.key});

  final textuser = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Consumer<ViewModel>(builder: (context, viewmodel, child) {
      return
        FloatingActionButton(
          child: Icon(Icons.add),
          backgroundColor: Colors.green,
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>alertdilog(),
                      ));
          },
        );
    });
  }
}
