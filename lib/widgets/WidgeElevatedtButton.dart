import 'package:flutter/material.dart';

class WidgetElevatedButton extends StatelessWidget {
  final String text;
  const WidgetElevatedButton({Key key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text("$text", style: TextStyle( color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20.00),),
      onPressed: (){},
    );
  }
}
