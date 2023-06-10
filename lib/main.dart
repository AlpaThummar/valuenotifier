import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: home(),
  ));
}

class home extends StatelessWidget {
  TextEditingController t1 = TextEditingController();
  TextEditingController t2 = TextEditingController();

  ValueNotifier<int> sum= ValueNotifier(0);
  ValueNotifier<int> sub= ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Valunotifer"),
        ),
        body: Column(
          children: [
            TextField(
              controller: t1,
            ),
            TextField(
              controller: t2,
            ),
            Row(
              children: [
                ValueListenableBuilder(valueListenable: sum, builder: (context, value, child) {
                  return Text("Sum=${value}");
                },),
                ValueListenableBuilder(valueListenable: sub, builder: (context, value, child) {
                  return Text("Sub=${value}");
                },)

              ],
            ),
            ElevatedButton(onPressed: () {
              String a,b;
              a=t1.text;
              b=t2.text;
              sum.value = int.parse(a)+int.parse(b);

            }, child: Text("SUM")),
            ElevatedButton(onPressed: () {
              String a,b;
              a=t1.text;
              b=t2.text;
              sub.value= int.parse(a)-int.parse(b);

            }, child: Text("Sub"))
          ],
        ));
  }
}
