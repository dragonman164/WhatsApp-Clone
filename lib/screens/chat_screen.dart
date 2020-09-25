import 'package:flutter/material.dart';
import '../models/chat_model.dart';
import '../screens/chat_with_person_screen.dart';
import 'package:intl/intl.dart';



class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: dummyData.length,
      itemBuilder: (context,index)=> Column(
        children: [
          Divider(height: 10.0,),
          ListTile(leading: CircleAvatar(
            radius: 28,
            foregroundColor: Theme.of(context).primaryColor,
            backgroundColor: Colors.grey[300],
            child: Icon(Icons.person,color: Colors.white,size: 50,),
          ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(dummyData[index].name,
                  style: TextStyle(fontWeight: FontWeight.bold),),
                Text(DateFormat("hh:mm a").format(dummyData[index].time),
                    style: TextStyle(color: Colors.grey,fontSize: 14.0)),
              ],
            ),
            subtitle: Container(
              padding: EdgeInsets.only(top: 5),
              child: Text(dummyData[index].message,style: TextStyle(
                  color: Colors.grey,fontSize: 15
              ),),


            ),
            onTap: () {
              Navigator.of(context).pushNamed(ChatWithPerson.routeName,arguments: {'chat': dummyData[index]});
            },
          ),
        ],
      ) ,
    );
  }
}
