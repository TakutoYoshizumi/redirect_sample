//ライブラリのインポート
import 'package:flutter/material.dart';
import 'package:kadai2/nextPage.dart';

//アプリケーション起動時に呼ばれる関数
void main() {
  //runApp関数を使用しMyAppクラスの呼び出し。Flutterアプリケーションの始り。
  runApp(MaterialApp(home:FirstPage()));
}

//MyApp StatelessWidgetを継承したクラス
class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Hello World!!'),
        ),
        body:Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => nextPage()),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text('画面遷移',style:TextStyle(fontSize: 30)),
                ),
              )
            ],
          ),
        )
    );
  }
}



