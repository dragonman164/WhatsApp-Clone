import 'package:flutter/material.dart';

class ChatWithPerson extends StatelessWidget {
  static String routeName = '/chatWithPerson';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CircleAvatar(
          radius: 20,
          child: Icon(
            Icons.person,
            color: Colors.white,
            size: 20,
          ),
          backgroundColor: Colors.grey[200],
        ),
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'Hello World',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
              ),
              Icon(Icons.videocam),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
              ),
              Icon(Icons.call),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12),
              ),
              Icon(Icons.more_vert),
            ],
          )
        ],
      ),
      body: Stack(
        children: [
         Container(
           decoration: BoxDecoration(
             image: DecorationImage(
               image: AssetImage('assets/chatbackground.png'),
               fit: BoxFit.cover
             )
           ),
         ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(

                padding: EdgeInsets.fromLTRB(5, 10, 5, 30),
                decoration: BoxDecoration(
                    color: Colors.white,
                  borderRadius: BorderRadius.circular(15)
                ),
                child: Row(
                  children: [
                    Icon(Icons.insert_emoticon,color: Colors.grey,),
                   Container(
                     width: 200,
                       child: TextField(
                         decoration: InputDecoration(
                           labelText: 'Type a message',
                         ),
                       )),
                    Icon(Icons.attachment,color: Colors.grey,),
                    Icon(Icons.camera_alt,color: Colors.grey,)
                  ],
                )
              )
            ],
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(

        onPressed: null,
        backgroundColor: Theme.of(context).primaryColor,
        child: Icon(
          Icons.mic,
          color: Colors.white,
        ),
      ),
    );
  }
}
