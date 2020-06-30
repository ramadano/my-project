
import 'package:flutter/material.dart';
//import 'package:flutter/painting.dart';
import 'package:carousel_pro/carousel_pro.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return MaterialApp(
     debugShowCheckedModeBanner: false,
title: "my first app",
     home:Directionality(textDirection: TextDirection.rtl, child: Scaffold(
       appBar: AppBar(title: Text ("نبيل العرص"),backgroundColor: Colors.blueGrey,
           actions: <Widget>[IconButton(icon: Icon(Icons.search),onPressed: (){}
             ,)
           ],
       ),

       drawer: Drawer(

         child :ListView(
           children: <Widget>[
             UserAccountsDrawerHeader(accountEmail: Text("ramadano757@gmail.com"),
               accountName: Text("omar ramadan"),
               currentAccountPicture: CircleAvatar(child: Icon(Icons.person),),
               decoration: BoxDecoration(
                   color: Colors.black12),
             ),
             ListTile(
               title: Text("الصفحة الرئيسية",style: TextStyle(color: Colors.black,fontSize: 18),),
               leading: Icon(Icons.home,color: Colors.lightBlue,size: 25,),
              onTap: (){},
             ),
             ListTile(
               title: Text("الاقسام",style: TextStyle(color: Colors.black,fontSize: 18),),
               leading: Icon(Icons.category,color: Colors.lightBlue,size: 25,),
               onTap: (){},
             ),
             Divider(color: Colors.blueGrey,),
             ListTile(
               title: Text("الاعدادات",style: TextStyle(color: Colors.black,fontSize: 18),),
               leading: Icon(Icons.settings,color: Colors.lightBlue,size: 25,),
               onTap: (){},
             ),
             ListTile(
               title: Text("تسجيل الخروج",style: TextStyle(color: Colors.black,fontSize: 18),),
               leading: Icon(Icons.exit_to_app,color: Colors.lightBlue,size: 25,),
               onTap: (){},
             ),
           ],
         ),


       ),
       body: ListView(children: <Widget>[
         Container(
           height: 200.0,
          // width: double.infinity,
           child: Carousel(
             boxFit: BoxFit.fill,
             autoplay: true,
            animationDuration: Duration(milliseconds: 1000),
             autoplayDuration: Duration(seconds: 5),
             dotSize: 7.0,
             dotIncreaseSize: 2.0,
             dotIncreasedColor: Colors.blueGrey,
             dotBgColor: Colors.black12.withOpacity(.4),
             indicatorBgPadding: 7.0,
             images: [
               NetworkImage('https://cdn-images-1.medium.com/max/2000/1*GqdzzfB_BHorv7V2NV7Jgg.jpeg'),
               NetworkImage('https://cdn-images-1.medium.com/max/2000/1*wnIEgP1gNMrK5gZU7QS0-A.jpeg'),
               NetworkImage('https://cdn-images-1.medium.com/max/2000/1*GqdzzfB_BHorv7V2NV7Jgg.jpeg'),
               NetworkImage('https://cdn-images-1.medium.com/max/2000/1*wnIEgP1gNMrK5gZU7QS0-A.jpeg'),

             ],
           ),
         ),
       ],),
     ),

     )
   );
  }
}