import 'package:flutter/material.dart';
import 'package:name_arguments/widgets/WidgeElevatedtButton.dart';
class MainPageMenu extends StatelessWidget {
  static const routeName = "/MainPageMenu";

  @override

  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;

    final Map<String, dynamic> data = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              height: _size.height * 0.20  ,
              width: _size.width * 0.50,
              child: Image(
                image: AssetImage("assets/images/ocard_logo-01.png"),
                fit: BoxFit.contain,
              ),
            ),
            Spacer(),
            Container(
              height: _size.height * 0.10  ,
              width: _size.width * 0.40,
              child: WidgetElevatedButton( text: "${data["Menu1"]}", ),
            ),
            // Spacer(),
            // SizedBox(height: 250.00),
            SizedBox(height: 20.00),
            Container(
              height: _size.height * 0.10  ,
              width: _size.width * 0.40,
              child: WidgetElevatedButton( text: "${data["Menu2"]}", ),

            ),
            SizedBox(height: 20.00),
            // Spacer(),
            Container(
              height: _size.height * 0.10  ,
              width: _size.width * 0.40,
              child: WidgetElevatedButton( text: "${data["Menu3"]}", ),
            ),
            SizedBox(height: 100.00),
            Spacer(),

          ],
        ),
      ),
    );
  }
}
