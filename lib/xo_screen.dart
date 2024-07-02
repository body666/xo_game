
import 'package:flutter/material.dart';
import 'package:xo_game/playerModel.dart';
import 'package:xo_game/xo_button.dart';
class XoScreen extends StatefulWidget {
  static const String routeName ="XoScreen";


  @override
  State<XoScreen> createState() => _XoScreenState();
}

class _XoScreenState extends State<XoScreen> {
  List<String>board = [
    "", "", "",
    "", "", "",
    "", "", "",
  ];
  int score1=0;
  int sccore2=0;

  @override
  Widget build(BuildContext context) {

    var args = ModalRoute.of(context)?.settings.arguments as PlayerModel;//to receive the arguments
    return Scaffold(

      body: Column(
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(args.name1, style:
                    TextStyle(
                        fontSize: 20
                    ),
                    ),
                    Text("$score1", style:
                    TextStyle(
                        fontSize: 20
                    ),),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children:
                  [
                    Text(args.name2, style:
                    TextStyle(
                        fontSize: 20
                    ),
                    ),
                    Text("$sccore2",
                      style:
                      TextStyle(
                          fontSize: 20
                      ),
          ),
                  ],),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                XoButton(board[0], onButtonClicked, 0),
                XoButton(board[1], onButtonClicked, 1),
                XoButton(board[2], onButtonClicked, 2),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                XoButton(board[3], onButtonClicked, 3),
                XoButton(board[4], onButtonClicked, 4),
                XoButton(board[5], onButtonClicked, 5),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                XoButton(board[6], onButtonClicked, 6),
                XoButton(board[7], onButtonClicked, 7),
                XoButton(board[8], onButtonClicked, 8),
              ],
            ),
          ),


        ],
      ),
    );
  }

  int counter = 1;
  onButtonClicked(index)

  {
    if(board[index].isNotEmpty ) return ;
    if (counter.isOdd) {
      board[index] = "X";
    //  score1+=1;
      bool win=CheckWinner("X");
      if(win){
        score1+=10;
        resetboard();
      }
    }
    else {
      board[index] = "O";
     // score2+=1;
      bool win=CheckWinner("O");
      if(win)
        {
          sccore2+=10;
          resetboard();
        }


    }
    if(counter==9)
    {
      resetboard();

    }
    counter++;
    setState(() {

    });
  }

  bool CheckWinner(String Symbol)
  {
    for(int i=0;i<9;i+=3)
      {
        if(board[i]==Symbol && board[i+1]==Symbol && board[i+2]==Symbol)
        return true;
      }

      for(int i=0;i<3;i++)
        {

          if(board[i]==Symbol && board[i+3]==Symbol && board[i+6]==Symbol)
          return true;
        }

      if(board[0]==Symbol && board[4]==Symbol && board[8]==Symbol)
        return true;

    if(board[2]==Symbol && board[4]==Symbol && board[6]==Symbol)
      return true;



   return false;
  }

  resetboard()
  {
    board = [
      "", "", "",
      "", "", "",
      "", "", "",
    ];
    counter=0;
  }


}
