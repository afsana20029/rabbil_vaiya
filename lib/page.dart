import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rabbil_vaiya/style.dart';

class CounterApp extends StatefulWidget {
  CounterApp({super.key});
  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  Map<String,double> FormValue = {"num1":0, "num2": 0, "num3": 0};
  double Sum=0;

  @override
  Widget build(BuildContext context) {
    MyInputOnChange(InputKey, InPutValue) {
      setState(() {
        FormValue.update(InputKey, (value) => double.parse(InPutValue));
      });
    }
    AddAllNum(){
     setState(() {
       Sum=FormValue['num1']!+ FormValue['num2']!+FormValue['num3']!;
     });

    }
    multiAllNum(){
      setState(() {
      Sum=FormValue['num1']!* FormValue['num2']!*FormValue['num3']!;
      });

    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Add'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            Text(
              Sum.toString() ,
              style: HeadTextStyle(),
            ),
            SizedBox(
              height: 8,
            ),
            TextFormField(
              onChanged: (value) {
                MyInputOnChange("num1", value);
              },
              decoration: AppInputStyle('First number', 'Enter number'),
            ),
            SizedBox(
              height: 14,
            ),
            TextFormField(
              onChanged: (value) {
                MyInputOnChange("num2", value);
              },
              decoration: AppInputStyle('Second number', 'number'),
            ),
            SizedBox(
              height: 12,
            ),
            TextFormField(
              onChanged: (value) {
                MyInputOnChange("num3", value);
              },
              decoration: AppInputStyle('Third number', 'number'),
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              width: double.maxFinite,
              height: 40,
              child: ElevatedButton(
                  style: AppButtonStyle(),
                  onPressed: () {AddAllNum();},
                  child: Text(
                    "Add",
                    style: TextStyle(color: Colors.white),
                  )),
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              width: double.maxFinite,
              height: 40,
              child: ElevatedButton(
                  style: AppButtonStyle(),
                  onPressed: () {multiAllNum();},
                  child: Text(
                    "multi",
                    style: TextStyle(color: Colors.white),
                  )),
            ),

          ],
        ),
      ),
    );
  }
}
