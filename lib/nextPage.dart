import 'package:flutter/material.dart';


class nextPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Container(
          decoration: BoxDecoration(
            color: Color(0xffb2e0ff),
          ),
          child: Center(

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom:30),
                  child: Text('ようこそ！',
                    style: TextStyle(
                        fontSize: 27,
                        fontFamily:"Hannari",
                        letterSpacing: 7.5,
                        color: Colors.black45,
                    ),
                    ),
                ),
                //画面遷移　トップページへ戻る
                Container(
                  width: 180,
                  height: 40,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: FractionalOffset.topLeft,
                      end: FractionalOffset.bottomRight,
                      colors: const [
                        Color(0xfff6c38f),
                        Color(0xffda85ff),
                      ],
                    ),
                  ),
                  child: ElevatedButton(
                    onPressed: (){
                      Navigator.pop(context);
                    },
                    style:ElevatedButton.styleFrom(
                      primary: Colors.transparent,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text('戻る！',style:TextStyle(fontSize: 16)
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        )
    );
  }
}