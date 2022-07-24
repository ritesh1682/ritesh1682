import 'package:flutter/material.dart';

class MyMobileBody extends StatelessWidget {
  const MyMobileBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      drawer: Drawer(),
      appBar: AppBar(
        title: Text("MOBILE"),
        backgroundColor: Colors.grey.shade900,
      ),
      body: Row(
        children: [

          Expanded(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: AspectRatio(
                    aspectRatio: 16/9,
                    child: Container(
                      child: Image.network(
                          fit: BoxFit.cover,
                          'https://images.pexels.com/photos/4072840/pexels-photo-4072840.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),

                      color: Colors.grey.shade600,
                    ),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: 8,
                    itemBuilder: (context, index) {
                      return Container(
                        child: Image.network(
                            fit: BoxFit.fitWidth,
                            'https://images.pexels.com/photos/7753054/pexels-photo-7753054.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                        height: 120,
                        margin: EdgeInsets.fromLTRB(8, 4, 8, 8),
                        color: Colors.grey.shade400,
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
