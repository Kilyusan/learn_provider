import 'package:flutter/material.dart';
import 'package:lean_provider/main_model.dart';
import 'package:provider/provider.dart';

void main() {runApp(MyApp());}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: ChangeNotifierProvider<MainModel>(
        create: (_) => MainModel(),
        child: Scaffold(
          appBar: AppBar(
            title: Text('松寿仙'),
          ),
          body: Consumer<MainModel>(
            builder: (context, model, child) {
              return Center(
                child: Column(
                  children: [
                    Text(
                      model.wakanText,
                              style: TextStyle(
                                fontSize: 30,
                              ),
                    ),
                    TextButton(
                      child: Text('ボタン'),
                      onPressed: (){
                        model.changeWakanText();
                        },
                    ),
                  ],
                ),
              );
            }
          ),
        ),
      ),
    );
  }
}
