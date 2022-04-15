import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter_svg/flutter_svg.dart' ;
import 'package:memoleeds/people.dart';
import 'package:memoleeds/main.dart' ;
import 'package:memoleeds/profile.dart' ;
import 'package:memoleeds/write.dart' ;
import 'package:get/get.dart';
import 'package:flutter_swiper/flutter_swiper.dart';


void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {


    return  GetMaterialApp(

      debugShowCheckedModeBanner: false,


      title: 'MEMO, LEEDS',

      theme: ThemeData(
        primarySwatch: Colors.blue,
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xffDCB8E4),
          foregroundColor: Colors.white,
          titleTextStyle: TextStyle(fontFamily: 'Memory', fontSize: 17)
        ),
      ),




      home: const  App(),
    );
  }
}


class App extends StatefulWidget {
  const App({ Key? key }) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {

  int selectedIndex = 1;

  final screen = [
    People(),
    Main(),
    Profile(),
  ];

  var _pageController = PageController();

  final write = Write();

  @override


  Widget build(BuildContext context) {
    return  WillPopScope(child: Scaffold(

      floatingActionButton : FloatingActionButton(

        backgroundColor: Color(0xffFF7C94),

        onPressed: (){
          Navigator.push (

              context, MaterialPageRoute(builder:  (context) => write)

          );
        },

        child: Icon(
          Icons.edit,
          size : 35,
        ),

      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,



      endDrawer: Drawer(
          child: ListView(

              padding: EdgeInsets.zero,
              children: [
                Container(
                  height: 120,

                  decoration: BoxDecoration(
                      gradient : LinearGradient(
                          colors: [ (Color(0xffFFD1D1)).withOpacity(1),Color(0xffFFFFFF).withOpacity(0.8)],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter)),


                  child: DrawerHeader(


                      margin : EdgeInsets.zero,


                      decoration: BoxDecoration(




                      ),

                      child: Column(

                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                        crossAxisAlignment: CrossAxisAlignment.start,

                        children: [



                          Text('반가워요, 수연님', style: TextStyle(color :Color(0xffFF7C94),  fontSize : 13.0,)),

                          Text('오늘 기억도 좋으셨나요?', style: TextStyle(color :Color(0xffFF7C94),  fontSize : 18.0,))




                          ,],)


                  ),),

                ListTile(
                  title: const Text('계정 관리'),

                  tileColor: Colors.transparent,
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),

                ListTile(
                  title: const Text('도움말'),
                  onTap: () {
                    Navigator.pop(context);},),


                ListTile(
                  title: const Text('로그아웃'),
                  onTap: () {
                    Navigator.pop(context);},),



              ]



          )
      ),






      appBar: AppBar(


        toolbarHeight: 50,
        title: Text('MEMO, LEEDS', style: TextStyle(color : Color(0xffFFFFFF))),
        elevation: 0.2,
        centerTitle: true,

        flexibleSpace: Container(

          decoration: BoxDecoration(

              gradient: LinearGradient(

                begin: Alignment.topLeft,
                end : Alignment.bottomRight,

                colors: <Color>[

                  Color(0xffDCB8E4),Color(0xffFF7C94),

                ],
              )


          ),


        ),





      ),




      body:

      screen[selectedIndex],

      bottomNavigationBar:CurvedNavigationBar(
        index: selectedIndex,
        height: 65.0,
        items: [
          Icon(Icons.groups, size: 35, color: Color(0xffDCB8E4)),
          Icon(Icons.home, size: 35, color:Color(0xffDCB8E4)),
          Icon(Icons.account_circle, size: 35, color: Color(0xffDCB8E4)),
        ],

        color: Colors.white,
        buttonBackgroundColor: Colors.white,
        backgroundColor :  Color(0xffDCB8E4),
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 700),
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });

          PageView(
              controller: _pageController,
              onPageChanged: (index) { setState(() {
                selectedIndex = index;
              });
              }



          )


          ;

        },

        letIndexChange: (index) => true,
      ),



    ), onWillPop: ()async{

      return false;});



  }




}
