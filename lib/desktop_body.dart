import 'package:flutter/material.dart';

class MyDesktopBody extends StatelessWidget {
  const MyDesktopBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        title: Text("DESKTOP"),
        backgroundColor: Colors.grey.shade900,
      ),
      body: Row(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            child:  Image.network(
                fit: BoxFit.fitHeight,
                'https://images.pexels.com/photos/1761279/pexels-photo-1761279.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
            margin: EdgeInsets.fromLTRB(16, 16, 8, 16),
            width: 200,
            color: Colors.grey.shade600,
          ),
          Expanded(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(4, 16, 8,4),
                  child: AspectRatio(
                    aspectRatio: 3/2,
                    child: Container(
                      child: Image.network('https://upload.wikimedia.org/wikipedia/commons/thumb/c/c8/Altja_j%C3%B5gi_Lahemaal.jpg/1280px-Altja_j%C3%B5gi_Lahemaal.jpg'),
                      height: 250,
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
                            'https://images.pexels.com/photos/1438761/pexels-photo-1438761.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                        height: 120,
                        margin: EdgeInsets.fromLTRB(4,8, 8, 4),
                        color: Colors.grey.shade400,
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(4,16, 16, 4),
                  child: AspectRatio(
                    aspectRatio: 9/4,
                    child: Container(
                      child:  Image.network(
                          fit: BoxFit.cover,
                          'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c8/Altja_j%C3%B5gi_Lahemaal.jpg/1280px-Altja_j%C3%B5gi_Lahemaal.jpg'),
                      height: 200,
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
                            'https://images.pexels.com/photos/4101555/pexels-photo-4101555.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                        height: 80,
                        margin:EdgeInsets.fromLTRB(4,8, 16, 4),
                        color: Colors.grey.shade400,
                      );
                    },
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
