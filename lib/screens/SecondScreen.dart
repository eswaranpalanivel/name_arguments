import 'package:flutter/material.dart';
import 'package:name_arguments/screens/MainPageMenu.dart';


class SecondScreen extends StatelessWidget {
  static const routeName = "/SecondScreen";
  @override

  Widget build(BuildContext context) {

    Size _size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: _size.height * 0.20  ,
                width: _size.width * 0.50,
                child: Image(
                  image: AssetImage("assets/images/ocard_logo-01.png"),
                  fit: BoxFit.contain,
                ),
              ),
              Container(
                height: _size.height * 0.30,
                width: _size.width * 0.40,
                child: Image(
                  image: AssetImage("assets/images/ola_tag-01.png"),
                ),
              ),
              // Spacer(),
              Container(
                height: _size.height * 0.10 > 50 ? _size.height * 0.10 :50  ,
                width: _size.width * 0.70,
                child: ElevatedButton(
                  onPressed: (){
                    Navigator.of(context).pushNamed("/MainPageMenu", arguments: {
                      "Menu1" : "CSA",
                      "Menu2" : "MANAGER",
                      "Menu3" : "DEALER"

                    });

                  },
                  child: Text("Tap Your Tag to Login", style: TextStyle( color: Colors.blue, fontSize: 18.00, fontWeight: FontWeight.bold), ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    // onPrimary: Colors.white,
                  ),
                ),

              ),
            ],
          ),
        ),

      ),
    );
  }
}
