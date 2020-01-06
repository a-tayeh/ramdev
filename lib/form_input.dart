import 'package:flutter/material.dart';

class FormInput extends StatelessWidget {
  String placeholder;
  Icon labelIcon;
  FormInput({this.placeholder, this.labelIcon});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 100, left: 20, right: 20),
      child: TextFormField(
        // onSaved: onSaved,
        // validator: validator,
        autofocus: true,
        obscureText: false,
        style: TextStyle(fontSize: 20, color: Colors.white),
        decoration: InputDecoration(
            hintStyle: TextStyle(
                fontWeight: FontWeight.w300, fontSize: 20, color: Colors.grey),
            hintText: this.placeholder,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide(
                color: Colors.white,
                width: 2,
              ),
            ),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(
                  color: Colors.amber[400],
                  width: 2,
                )),
            prefixIcon: Padding(
              child: IconTheme(
                data: IconThemeData(color: Colors.amber[400]),
                child: this.labelIcon,
              ),
              padding: EdgeInsets.only(left: 30, right: 10),
            )),
      ),
    );
  }
}
