import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  static String routeName = '/settings';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
        backgroundColor: Theme.of(context).primaryColor,

      ),
      body:  Column(
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
                Text('UserName',
                  style: TextStyle(fontWeight: FontWeight.bold),),
              ],
            ),
            subtitle: Container(
              padding: EdgeInsets.only(top: 5),
              child: Text('Status',style: TextStyle(
                color: Colors.grey,fontSize: 14,
              ),),
            ),

          ),
          Divider(height: 12,thickness: 2,),
          SizedBox(
            height: MediaQuery.of(context).size.height-170,
            child: ListView(
              children: [
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.all(30.0),
                                child: Icon(Icons.vpn_key,
                                color: Colors.lightGreen,
                                size: 30,),
                              ),
                              Column(
                                children: [
                                  Text('Account',
                                  style: TextStyle(
                                    fontSize: 17
                                  ),),
                                  Divider(height: 5,),
                                  Text('Privacy, security, change number',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 15,

                                  ),
                                  ),
                                ],
                              ),


                            ],

                          ),
                        ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(30.0),
                        child: Icon(Icons.chat,
                          color: Colors.lightGreen,
                          size: 30,),
                      ),
                      Column(
                        children: [
                          Text('Chats',
                            style: TextStyle(
                                fontSize: 17
                            ),),
                          Divider(height: 5,),
                          Text('Theme, wallpaper, chat history',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 15,

                            ),
                          ),
                        ],
                      ),


                    ],

                  ),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(30.0),
                        child: Icon(Icons.notifications_active,
                          color: Colors.lightGreen,
                          size: 30,),
                      ),
                      Column(
                        children: [
                          Text('Notifications',
                            style: TextStyle(
                                fontSize: 17
                            ),),
                          Divider(height: 5,),
                          Text('Message, group & call tones',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 15,

                            ),
                          ),
                        ],
                      ),


                    ],

                  ),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(30.0),
                        child: Icon(Icons.data_usage,
                          color: Colors.lightGreen,
                          size: 30,),
                      ),
                      Column(
                        children: [
                          Text('Data and Storage usage',
                            style: TextStyle(
                                fontSize: 17
                            ),),
                          Divider(height: 5,),
                          Text('Network-usage,auto-download',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 15,

                            ),
                          ),
                        ],
                      ),


                    ],

                  ),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(30.0),
                        child: Icon(Icons.help,
                          color: Colors.lightGreen,
                          size: 30,),
                      ),
                      Column(
                        children: [
                          Text('Help',
                            style: TextStyle(
                                fontSize: 17
                            ),),
                          Divider(height: 5,),
                          Text('FAQ, contact us, privacy policy',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 15,

                            ),
                          ),
                        ],
                      ),


                    ],

                  ),
                ),
                Divider(height: 2,thickness: 1,),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(30.0),
                        child: Icon(Icons.supervisor_account,
                          color: Colors.lightGreen,
                          size: 30,),
                      ),
                      Column(
                        children: [
                          Text('Invite a friend',
                            style: TextStyle(
                                fontSize: 17
                            ),),
                          Divider(height: 5,),

                        ],
                      ),


                    ],

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
