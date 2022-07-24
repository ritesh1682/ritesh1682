import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aspect Ratio',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Aspect-Ratio'),
        ),
        body: Column(
          children: [
            Flexible(
              child: LayoutBuilder(
                  builder: (context, constraints) {
                      if(constraints.maxHeight<100){
                        return Container(
                          height: 100,
                          child: Text('Hello Android'),
                        );
                      }else{
                        return AspectRatio(
                          aspectRatio: 16/9,
                          child: Image.network(
                            "https://images.pexels.com/photos/3635300/pexels-photo-3635300.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
                            fit: BoxFit.fitWidth,
                          ),
                        );
                      }
                  },

              ),
            ),
            Container(
              color: Colors.grey,
              height: 300,
            )
          ],
        )
      ),
    );
  }
}
