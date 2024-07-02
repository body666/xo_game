import 'package:flutter/material.dart';
class XoButton extends StatelessWidget {

String text;
Function onButtonClick;
int index;
XoButton(this.text,this.onButtonClick,this.index);
  @override
  Widget build(BuildContext context) {
    return  Expanded(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.orange,
                shape: RoundedRectangleBorder(
              borderRadius:BorderRadius.circular(40),
                  side: BorderSide(
                    width: 3,
                    color: Colors.white,
                  )
                )
          ),
            onPressed: (){
              onButtonClick(index);
            },
            child: Text(text,style:
              TextStyle(
                fontSize: 50,
              ),
            )
     )
    );
  }
}
