import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:flutter/material.dart';

void main() async => runApp(MaterialApp(home: Demo()));

class Demo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //
    return Scaffold(
      appBar: AppBar(title: const Text('WrapSuper Example')),
      body: Container(
        color: Colors.grey[800],
        alignment: Alignment.center,
        child: Container(
          width: 200,
          color: Colors.grey[300],
//          child: Wrap(
//            alignment: WrapAlignment.center,
          child: WrapSuper(
            alignment: WrapSuperAlignment.center,
            wrapType: WrapType.balanced ,
            spacing: 5.0,
            lineSpacing: 2.0,
            children: [
              Box(color: Colors.black, width: 200, height: 2),
              Box.r(width: 100-5.0, height: 20),
              Box.g(width: 100, height: 20),
              Box(color: Colors.black, width: 200, height: 2),
              Box.r(width: 60, height: 20),
              Box.g(width: 60, height: 20),
              Box.b(width: 60, height: 20),
              Box.y(width: 60, height: 20),
              Box(color: Colors.black, width: 200, height: 2),
              Box.r(width: 50, height: 30),
              Box.g(width: 140, height: 50),
              Box.b(width: 180, height: 70),
              Box.y(width: 40, height: 25),
              Box.r(width: 50, height: 25),
              Box.g(width: 60, height: 25),
              Box.b(width: 80, height: 25),
              Box.y(width: 120, height: 30),
              Box.r(width: 5, height: 40),
              Box(color: Colors.black, width: 200, height: 2),
              ...List<Widget>.filled(
                  200 ~/ (4+5),
                  Box.g(width: 4, height: 5)),
            ],
          ),
        ),
      ),
    );
  }
}
