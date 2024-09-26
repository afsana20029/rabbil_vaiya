import 'package:flutter/material.dart';

InputDecoration AppInputStyle(lable,hint){
  return InputDecoration(
     //contentPadding: EdgeInsets.fromLTRB(20, 30,10, 20),
    filled: true,
    fillColor:Colors.white,
    labelText: lable,
    hintText:hint,
    border: OutlineInputBorder(
      // borderRadius:BorderRadius.circular(radius)
      )
    );
}
TextStyle HeadTextStyle(){
  return TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w800,

  );
}
ButtonStyle AppButtonStyle(){
  return ElevatedButton.styleFrom(
    backgroundColor: Colors.green,
        shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(4))
  )
  );


}