import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'welcom.dart';
import 'package:courseflutter/model/attributes.dart';
import 'package:provider/provider.dart';
import 'package:courseflutter/viewmodel/viewmodel.dart';

class alertdilog extends StatelessWidget {
  alertdilog({super.key});
  final textuser = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Consumer<ViewModel>(builder: (context, viewmodel, child) {
      return AlertDialog(
        actions: <Widget>[
          TextField(
            controller: textuser,
            decoration: InputDecoration(label: Text("   TASK NAME")),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.end, children: [
            TextButton(
                child: new Text("save",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    )),
                onPressed: () {
                  if (textuser.text == "") {
                    Navigator.pop(context);
                  } else {
                    Task x = Task(textuser.text, false);
                    viewmodel.addtask(x);
                    print(textuser.text);
                    textuser.clear();
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => welc()));
                  }
                }),
            TextButton(
                child: new Text("cancel",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    )),
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => welc()));
                }),
          ]),
        ],
      );
    });
  }
}
