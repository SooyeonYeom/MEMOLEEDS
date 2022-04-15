import 'dart:html';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter_svg/flutter_svg.dart' ;


import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';



class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'MEMO, LEEDS',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),






      home: Home(),
    );
  }
} //앱


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();


}

class _HomeState extends State<Home> {

  int columnCount = 3;

  @override


  Widget build(BuildContext context) {


    return Scaffold(

      resizeToAvoidBottomInset : false,




      body:
        SingleChildScrollView(

          physics: NeverScrollableScrollPhysics(),

          child:



          Column(
            children: [


              Container(
                  width: double.infinity, height: 300, color:Color(0xffFBFFF2),



                  child : Column(

                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                    crossAxisAlignment: CrossAxisAlignment.center,

                      children:[
                        Container(child: Text('좋은 기억을 10회 기록했습니다', style : TextStyle( fontSize: 16, color: Color(0xff6A6C9E))),),

                    Container(width : 150, height: 150, margin : EdgeInsets.all(0), padding: EdgeInsets.all(5) ,

                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(150),
                      gradient : LinearGradient(
                          colors: [Color(0xffFFD1D1).withOpacity(0), (Color(0xffFFCDCD)).withOpacity(1)],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter)),


                  child: CircleAvatar(backgroundColor : Colors.transparent ,backgroundImage: AssetImage('/Users/yeomsuyeon/memoleeds/assets/img-10.gif'))),


                        Container(child: Text('염수연', style : TextStyle( fontSize: 20, color: Color(0xff6A6C9E) )),),

                        Container(

                          child: Text('@valikys', style : TextStyle( fontSize: 16, color: Color(0xff6A6C9E))),),


            ])),




              Container(

                width: double.infinity, height: 1000,

                decoration: BoxDecoration(
                  gradient : LinearGradient(
                    colors: [(Color(0xffFBFFF2)).withOpacity(1), Color(0xffFFDCDC),Color(0xffFFDCDC)],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,

                  ),

                ),

                child: AnimationLimiter(
                  child: GridView.count(
                    crossAxisCount: columnCount,
                    children: List.generate(
                      100,
                          (int index) {
                        return AnimationConfiguration.staggeredGrid(
                          position: 10,
                          duration: const Duration(milliseconds: 300),
                          columnCount: columnCount,
                          child: ScaleAnimation(
                            child: FadeInAnimation(
                              child: Icon(Icons.image, size: 180, color: Colors.white,),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),

              )





            ],
          ),)




    );
  }
}






