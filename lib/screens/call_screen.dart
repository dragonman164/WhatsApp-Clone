import 'package:flutter/material.dart';
import '../models/chat_model.dart';
import 'package:intl/intl.dart';

class CallsScreen extends StatelessWidget {
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
              ],
            ),
            subtitle: Container(
              padding: EdgeInsets.only(top: 5),
              child: Row(
                children: [
                  Icon(Icons.call_received,color: Colors.green,
                  size: 20,),
                  Text(DateFormat("MMMM dd, hh:mm a").format(dummyData[index].time),style: TextStyle(
                      color: Colors.grey,fontSize: 15
                  ),),
                ],
              ),


            ),
            trailing: Icon(Icons.call,color: Theme.of(context).primaryColor,),
          ),
        ],
      ) ,
    );
  }
}
