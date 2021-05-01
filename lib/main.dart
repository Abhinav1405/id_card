import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
void main() =>runApp(MyApp());


class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
bool cd=false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: Scaffold(
backgroundColor: cd ? Colors.grey[900] : Colors.white,
        appBar: AppBar(
        leading: Icon(Icons.accessibility_new,),
        backgroundColor: cd? Colors.black:Colors.yellow[800],
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.settings,

              ),
              onPressed: () {
                setState(() {
                  cd=!cd;
                });
                // do something
              },
            )
          ],

          title: Text("IDCARD"),

        ),
body: SingleChildScrollView(
  child:   SafeArea(

    child:   Padding(

      padding: EdgeInsets.fromLTRB(0, 10, 0, 0),

      child: Column(



        children: <Widget>[



          Center(
            child: CircleAvatar(
              backgroundImage:NetworkImage("https://cdn.pixabay.com/photo/2016/09/05/12/10/dragon-1646411_1280.jpg"),
            radius: 90.0,
            ),



          ),



          Card(
  child: ListTile(tileColor: cd? Colors.black:Colors.yellow[700],
    leading: Image(
      image: NetworkImage("https://cdn4.iconfinder.com/data/icons/iconsimple-logotypes/512/github-512.png"),

    ),
    onTap: ()async{
      final url="https://github.com/Abhinav1405";
      if(await canLaunch(url)){
        await launch(url);
    
      }
    },
    title: Text("github/Abhinav1405",
    style: TextStyle(
      fontSize: 20.0,
      color:Colors.blueGrey[900],
      fontWeight: FontWeight.bold,
    ),),
    
  ),
          ),


          Card(
                child: ListTile(tileColor: cd? Colors.black:Colors.yellow[700],
                  leading: Image(
                    image: NetworkImage("https://image.flaticon.com/icons/png/512/174/174857.png"),

                  ),
                  onTap: ()async{
                    final url="https://www.linkedin.com/in/abhinav-mangla-1a4a191b1/";
                    if(await canLaunch(url)){
                      await launch(url);

                    }
                  },
                  title: Text("linkedin/Abhinav1405",
                    style: TextStyle(
                      fontSize: 20.0,
                      color:Colors.blueGrey[900],
                      fontWeight: FontWeight.bold,
                    ),),

                ),











          ),
          Card(
            child: ListTile(tileColor: cd? Colors.black:Colors.yellow[700],
              leading: Image(
                image: NetworkImage("https://png.pngtree.com/png-clipart/20190903/original/pngtree-colorful-gradient-blue-phone-icon-png-image_4421040.jpg"),
              ),
              onTap: ()async{
              final phone_number="+919988113477";
    if(await launch("tel://<phone_number>")){
      await launch("tel://<phone_number>");
    }
              },
              title: Text("+91998811377",
                style: TextStyle(
                  fontSize: 20.0,
                  color:Colors.blueGrey[900],
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          )
        ],



      ),

    ),

  ),
),
      ),
    );
  }
}
