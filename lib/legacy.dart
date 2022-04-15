import 'dart:html';

import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter_svg/flutter_svg.dart' ;


void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(



      home:
      Scaffold(
        body: Container(


        ),
        bottomNavigationBar: BottomNavBar()

    ));

  }
}



class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _page = 0;
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();




  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            toolbarHeight: 60,
            title: Text('좋은 기억을 10회 기록했습니다', style: TextStyle(color : Color(0xff6A6C9E))),
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            centerTitle: true,
            leading: IconButton(icon: Icon(Icons.settings), onPressed: (){}, iconSize: 35, color: Color(0xffFFCDCD)),
            actions: [
              IconButton(icon: Icon(Icons.search), onPressed: (){}, iconSize: 35, color: Color(0xffFFCDCD))]

        ),
        extendBodyBehindAppBar: true,



        bottomNavigationBar: CurvedNavigationBar(
          key: _bottomNavigationKey,
          index: 0,
          height: 65.0,
          items: <Widget>[
            Icon(Icons.person_add_alt, size: 35, color: Color(0xff6A6C9E),),
            Icon(Icons.groups, size: 35, color: Color(0xff6A6C9E)),
            SvgPicture.asset(
                '/Users/yeomsuyeon/memoleeds/assets/icons/Vector.svg',
    width: 30, color: Color(0xffDCB8E4)),
            Icon(Icons.favorite, size: 35, color: Color(0xff6A6C9E)),
            Icon(Icons.account_circle, size: 35, color: Color(0xff6A6C9E)),
          ],
          color: Colors.white,
          buttonBackgroundColor: Colors.white,
          backgroundColor:  Color(0xffFFDCDC),
          animationCurve: Curves.easeInOut,
          animationDuration: Duration(milliseconds: 700),
          onTap: (index) {
            setState(() {
              _page = index;
            });
          },
          letIndexChange: (index) => true,
        ),








        body: SingleChildScrollView(

          child :

          Container(
          width: double.infinity,
          decoration: BoxDecoration(
          gradient : LinearGradient(
          colors: [(Color(0xffFBFFF2)).withOpacity(1), Color(0xffFFDCDC),Color(0xffFFDCDC)],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          ),

             ),
          child: Stack(

            alignment: Alignment.topCenter,

            children: [

               Container(width : 300, height: 2000, margin : EdgeInsets.only(top:250),

                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(
                        150,
                      ),
                      topLeft: Radius.circular(150),
                    ),
                    gradient : LinearGradient(
                        colors: [Color(0xff8688C9).withOpacity(0.5),(Color(0xff8688C9)).withOpacity(0.1), (Color(0xff8688C9)).withOpacity(0)],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter)),),

              Container(width : 220, height: 220, margin : EdgeInsets.only(top:90), padding: EdgeInsets.all(5) ,

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(150),
                    gradient : LinearGradient(
                        colors: [Color(0xffFFD1D1).withOpacity(0), (Color(0xffFFCDCD)).withOpacity(1)],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter)),


              child: CircleAvatar(backgroundColor : Colors.transparent ,backgroundImage: AssetImage('/Users/yeomsuyeon/memoleeds/assets/img-10.gif'))),



              Container(width : 340, height: 240, margin : EdgeInsets.only(top:280),

                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),

                      gradient : LinearGradient(
                          colors: [Color(0xffFFFFFF).withOpacity(0.0),(Color(0xffFFFFFF)).withOpacity(0.7), (Color(0xffFFFFFF)).withOpacity(1)],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter)),),



              Positioned(

                top: 380,

                  child: Container(

                      width : 300, height: 120,

                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),

                        gradient : LinearGradient(
                            colors: [Color(0xffFDE5E6).withOpacity(0), (Color(0xffFDE5E6)).withOpacity(1)],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter)),


                  ),),



            Positioned(

                top: 335,


                child: Container(

                  child : Text('MEMO, LEEDS', style: TextStyle(

                    fontSize: 35, fontFamily: 'Memory',color: Color(0xff1D2B64)
                  ),)



                )


            ),



            Positioned(

                top: 550,

                child : Column(


                  children: [

                    Component1(),
                    Component1(),
                    Component1(),
                    Component1(),
                    Component1(),
                    Component1(),
                    Component1(),
                    Component1(),
                    Component1(),
                    Component1(),




                  ],
                )




                 ),



            ]),
        ))




    );
  }
}



class Component1 extends StatelessWidget {
  const Component1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container( width : 400, height: 100, margin:  EdgeInsets.all(30) ,padding: EdgeInsets.only(right: 30),

        decoration: BoxDecoration( borderRadius: BorderRadius.only(
          topRight: Radius.circular(50,),
          topLeft: Radius.circular(50,),
          bottomRight: Radius.circular(50,),
          bottomLeft: Radius.circular(50),
        ),
            gradient : LinearGradient(
                colors: [Color(0xffFFFFFF).withOpacity(1), (Color(0xffFFFFFF)).withOpacity(1)],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight)),


        child : Row(

          mainAxisAlignment: MainAxisAlignment.spaceBetween,


          children: [

            Flexible(child: Container( width : 100, height: 100, padding: EdgeInsets.all(3),

                decoration: BoxDecoration( borderRadius: BorderRadius.circular(50,),
                    gradient : LinearGradient(
                        colors: [Color(0xffFFD1D1).withOpacity(0), (Color(0xffFFCDCD)).withOpacity(1)],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter)),



                child : CircleAvatar( backgroundColor : Colors.transparent ,backgroundImage: AssetImage('/Users/yeomsuyeon/memoleeds/assets/pro.png')))
              ,flex: 3,),



            Text('# 그 날, 너와의 첫만남', style: TextStyle(

                fontSize: 20,color: Color(0xff6A6C9E)
            ),),


            Flexible(child : Icon(Icons.favorite, size: 35, color: Color(0xffFF7C94)),flex: 1)

          ],
        )   );
  }
}



// child: Column(
//   mainAxisAlignment: MainAxisAlignment.center,
//   children: <Widget>[
//     Text(_page.toString(), textScaleFactor: 10.0),
//     ElevatedButton(
//       child: Text('Go To Page of index 1'),
//       onPressed: () {
//         final CurvedNavigationBarState? navBarState =
//             _bottomNavigationKey.currentState;
//         navBarState?.setPage(1);
//       },
//     )
//   ],
// ),





