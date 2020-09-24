import 'package:flutter/material.dart';


class ChatWidget extends StatelessWidget {
   final String messages;
   ChatWidget(this.messages);

  @override
  Widget build(BuildContext context) {
    return Container(
     alignment: Alignment.topRight,
          child: Text(messages),
          decoration: BoxDecoration(
            color: Colors.lightGreen[200],
            borderRadius: BorderRadius.circular(50),
          ),
          padding: EdgeInsets.fromLTRB(10, 7, 3, 10),
      margin: EdgeInsets.all(8),
        );

  }
}
