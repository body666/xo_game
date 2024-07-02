import 'package:flutter/material.dart';
import 'package:xo_game/playerModel.dart';
import 'package:xo_game/xo_screen.dart';
class Login extends StatelessWidget {
  static const String routeName ="Login";
  TextEditingController name1Controller=TextEditingController();
  TextEditingController name2Controller=TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15),
      child: Column(
        children: [
          TextField(
            controller: name1Controller,
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide(
                  width: 3,
                  color: Colors.green
                )
              ),
             focusedBorder: OutlineInputBorder(
             borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(
                width: 3,
                color: Colors.green
                )
                ),
              label:Text("Player One",style:
                TextStyle(
                  fontSize: 20,
                  color: Colors.black87
                ),
              ),
            ),
          ),
          SizedBox(height: 20,),
          TextField(
            controller: name2Controller,
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(
                      width: 3,
                      color: Colors.green
                  )
              ),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(
                      width: 3,
                      color: Colors.green
                  )
              ),
              label:Text("Player Two",style:
              TextStyle(
                  fontSize: 20,
                  color: Colors.black87
              ),
              ),
            ),
          ),
          SizedBox(height: 100,),
          ElevatedButton(
              onPressed: (){
               Navigator.pushNamed(context,XoScreen.routeName ,
               arguments: PlayerModel(name1Controller.text,name2Controller.text));
              },
              child: Text("Let's play"),
          )

        ],
      ),
    );
  }
}
