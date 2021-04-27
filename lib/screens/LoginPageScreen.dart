import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:name_arguments/screens/SecondScreen.dart';



class LoginPageScreen extends StatelessWidget {
  // This widget is the root of your application.
  static const routeName = "/‰";

  @override

  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Scaffold(

      body: Container(
        // width: double.infinity,
        // height: double.infinity,

        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/background_face.png"),
            fit: BoxFit.cover,
          ),

        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            // crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Spacer(),
              Container(
                height: _size.height * 0.10  ,
                width: _size.width * 0.50,
                child: Image(
                  image: AssetImage("assets/images/ocard_logo-01.png"),
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(height: 30.00),
              // Spacer(),
              Container(
                height: _size.height * 0.10 > 50 ? _size.height * 0.10 :50  ,
                width: _size.width * 0.60,

                child: ElevatedButton(
                  onPressed: (){
                    Navigator.of(context).pushNamed("/SecondScreen", arguments: {
                      "name" : "Eswaran Palanivel",
                      "Gender" : "Male"
                    });
                  },
                  child: Text("Login", style: TextStyle(color: Colors.white, fontSize: 40,  ),),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.yellow,
                    // onPrimary: Colors.white,
                  ),


                ),

              ),
              Spacer(),
              Container(

                height: _size.height * 0.30,
                width: _size.width * 0.40,
                child: Image(

                  image: AssetImage("assets/images/ola_logo_1-01.png"),
                  // fit: BoxFit.cover,
                ),
              ),

            ],

          ),
        ),


      ),
      // Childre
    );
  }
}
