import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../models/chat_model.dart';
import '../screens/chat_with_person_screen.dart';

// ignore: must_be_immutable
class CallWithPerson extends StatelessWidget {

    ChatModel chatModel;

  static String routeName = '/callWithePerson';
  @override
  Widget build(BuildContext context) {
    final routeArgs  =  ModalRoute.of(context).settings.arguments as Map<String, ChatModel>;
    chatModel = routeArgs['chat'];
    return Scaffold(
      appBar: AppBar(title: Text('Call info'),
      actions: [
        IconButton(
          onPressed: null,
          icon:IconButton(
            icon:  Icon(Icons.chat,color: Colors.white,),
            onPressed: () {
              Navigator.of(context).pushReplacementNamed(ChatWithPerson.routeName, arguments: {'chat':chatModel});
            },
          )

        ),
        PopupMenuButton(
          icon: Icon(Icons.more_vert),
          itemBuilder: (context) => <PopupMenuItem<String>>[
            PopupMenuItem<String>(
              child: Text('Remove from call log'), ),
            PopupMenuItem<String>(
              child:  Text('Add to contacts'),
            ),
            PopupMenuItem<String>(
              child:  Text('Block'),
            ),
          ],


        ),
      ],),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
      ListTile(leading: CircleAvatar(
      radius: 28,
        foregroundColor: Theme.of(context).primaryColor,
        backgroundColor: Colors.grey[300],
        child: Icon(Icons.person,color: Colors.white,size: 50,),
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(chatModel.name,
            style: TextStyle(fontWeight: FontWeight.bold),),
        ],
      ),
      subtitle: Container(
        padding: EdgeInsets.only(top: 5),
        child: Text(chatModel.quote,style: TextStyle(
            color: Colors.grey,fontSize: 14,
        ),),


      ),
        trailing: Container(
          padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
          width: MediaQuery.of(context).size.width-200,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.call,
              color: Theme.of(context).primaryColor,),
              Icon(Icons.videocam,
              color: Theme.of(context).primaryColor),
            ],
          ),
        ),
    ),
          Divider(height: 12,thickness: 2,),
          Text('   Yesterday',style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w400,
            color: Colors.grey,

          ),),
    ],
      ),

    );
  }
}
