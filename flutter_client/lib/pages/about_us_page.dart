import 'package:flutter/material.dart';
import 'about_contact_page.dart';

class AboutUsPage extends StatefulWidget{
  @override
  AboutUsPageState createState() => AboutUsPageState();
}

class AboutUsPageState extends State<AboutUsPage>{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
              Image.asset(
                'assets/images/company.jpg',
                fit: BoxFit.cover,
              ),
            ListTile(
              leading: Icon(Icons.message),
              title: Text('获得支持'),
              onTap: (){
                Navigator.of(context).pushReplacementNamed('company_info');
              },
            ),
            Divider(
              height: 10.0,
              color: Colors.grey,
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text('服务与维修'),
            ),
            Divider(
              height: 10.0,
              color: Colors.grey,
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text('Connect'),
              onTap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context)=>AboutContactPage()));
              },
            ),
            Divider(
              height: 10.0,
              color: Colors.grey,
            )
          ],
        ),
      ),
    );
  }
}