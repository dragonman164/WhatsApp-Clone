import 'package:flutter/material.dart';

class ChatWithPerson extends StatelessWidget {

  static String routeName = '/chatWithPerson';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:  CircleAvatar(
        radius:25,
        child: Icon(Icons.person,color: Colors.white,size: 40,),
        backgroundColor: Colors.grey[200],
      ),
      automaticallyImplyLeading: false,
      actions: [
        Row(
       //   mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text('Hello World',style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold
            ),),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12),
            ),

          Icon(Icons.videocam),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12),
          ),
          Icon(Icons.call),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12),
            ),
          Icon(Icons.more_vert),

        ],
        )
      ],),
      body: Center(
          child:Text('Chat Screen')),
    );
  }
}
