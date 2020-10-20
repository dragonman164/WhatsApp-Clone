import 'package:flutter/material.dart';


String privacyValue;

class  StatusPrivacy extends StatefulWidget {
  static String routeName = '/statusPrivacy';


  @override
  _StatusPrivacyState createState() => _StatusPrivacyState();
}

class _StatusPrivacyState extends State<StatusPrivacy> {
  String _check;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _check = privacyValue;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text('Status Privacy'),
      ),
    body: Padding(
      padding: EdgeInsets.symmetric(horizontal: 15,vertical: 30),
      child: Column(
        children: [
          Text('Who can see my status updates',
          style: TextStyle(
            color: Colors.green[800],
            fontSize: 17,
            fontWeight: FontWeight.w500,
          ),),
          Divider(height: 20,thickness: 0.000001,),
          ListTile(
            leading: Radio(
              value: 'Contacts',
              groupValue: _check,
              activeColor: Theme.of(context).primaryColor,
              onChanged: (ans) {
                setState(() {
                  _check = ans;
                });

              },

            ),
            title: Text('My contacts',
              style: TextStyle(
                  fontSize: 17
              ),),
          ),

          ListTile(
            leading: Radio(
             value: 'Contacts+',
              groupValue: _check,
              activeColor: Theme.of(context).primaryColor,
              onChanged: (ans){
               setState(() {
                 _check = ans;
               });
              },

            ),
            title: Text('My contacts except...',
              style: TextStyle(
                  fontSize: 17
              ),),
          ),
          ListTile(
            leading: Radio(
              value: 'Share',
              groupValue: _check,
              activeColor: Theme.of(context).primaryColor,
              onChanged: (ans) {
              setState(() {
                _check = ans;
              });
              },

            ),
            title: Text('Only share with...',
            style: TextStyle(
              fontSize: 17
            ),),
          ),
          Divider(height: 15,thickness: 0.000001,),
          Text('Changes to your privacy settings won\'t affect status updates that you\'ve sent already' ,style:
            TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.w400,
              fontSize: 15
            ),),
          Divider(height: MediaQuery.of(context).size.height-451,thickness: 0.000001,),
         RaisedButton(
           color: Colors.green[400],
           onPressed: () {
             privacyValue  = _check;
             Navigator.of(context).pop();
           },
           elevation: 4,
           child: Text('DONE',style: TextStyle(
             color: Colors.white
           ),),
         ),
        ],
      ),
    )
    );
  }
}
