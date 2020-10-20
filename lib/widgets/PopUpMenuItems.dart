import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screens/status_privacy.dart';
import '../screens/settings_screen.dart';

class PopChats extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  PopupMenuButton(
      icon: Icon(Icons.more_vert),
      itemBuilder: (context) => <PopupMenuItem<String>>[
        PopupMenuItem<String>(
          child: Text('New group'), ),
        PopupMenuItem<String>(
          child:  Text('New broadcast'),
        ),
        PopupMenuItem<String>(
          child:  Text('WhatsApp Web'),
        ),
        PopupMenuItem<String>(
          child:  Text('Starred Messages'),
        ),
        PopupMenuItem<String>(
          child:  Text('Settings'),
          value: 'Settings',
        ),
      ],
      onSelected: (received) {
        if(received == 'Settings')
          Navigator.of(context).pushNamed(Settings.routeName);
      } ,

    );
  }
}

class PopStatus extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      icon: Icon(Icons.more_vert),
      itemBuilder: (context)=> <PopupMenuItem<String>>[
        PopupMenuItem<String>(
          child: Text('Status privacy'),
          value: 'Privacy',
        ),
        PopupMenuItem<String>(
          child: Text('Settings'),
          value: 'Settings',
        )
      ],
      onSelected: (received) {
        if(received=='Settings')
          Navigator.of(context).pushNamed(Settings.routeName);
        else if(received=='Privacy')
          Navigator.of(context).pushNamed(StatusPrivacy.routeName);
      },
    );
  }
}

class PopCalls extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      icon: Icon(Icons.more_vert),
      itemBuilder: (context)=> <PopupMenuItem<String>>[
        PopupMenuItem<String>(
          child: Text('Clear call log'),

        ),
        PopupMenuItem<String>(
          child: Text('Settings'),
          value: 'Settings',
        ),
      ],
      onSelected: (received) {
        if(received=='Settings')
          Navigator.of(context).pushNamed(Settings.routeName);

      },
    );
  }
}
