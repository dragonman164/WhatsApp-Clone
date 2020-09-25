import 'package:flutter/material.dart';
import '../models/chat_model.dart';
import 'package:intl/intl.dart';

class StatusScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [ListTile(leading: CircleAvatar(
        radius: 28,
        foregroundColor: Theme.of(context).primaryColor,
        backgroundColor: Colors.grey[300],
        child: Icon(Icons.person,color: Colors.white,size: 50,),
      ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("My Status",
              style: TextStyle(fontWeight: FontWeight.bold),),
          ],
        ),
        subtitle: Container(
          padding: EdgeInsets.only(top: 5),
          child: Text("Tap to add status update",style: TextStyle(
              color: Colors.grey,fontSize: 15
          ),),


        ),
        onTap: () {
//              Navigator.of(context).pushNamed(ChatWithPerson.routeName,arguments: {'chat': dummyData[index]});
        },
      ),
        Container(
          child: Text('Viewed updates',style: TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),),
          color: Colors.grey[200],
          height: 30,
          width: double.infinity,
        ),
        Flexible(
          child: ListView.builder(
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
                    child: Text(DateFormat("EEEE, hh:mm a").format(dummyData[index].time),style: TextStyle(
                        color: Colors.grey,fontSize: 15
                    ),),


                  ),
                  onTap: () {
//              Navigator.of(context).pushNamed(ChatWithPerson.routeName,arguments: {'chat': dummyData[index]});
                  },
                ),
              ],
            ) ,
          ),
        ),
      ],
    );
  }
}
