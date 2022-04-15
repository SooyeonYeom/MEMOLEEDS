
import 'package:flutter/material.dart';

import 'package:flutter_swiper/flutter_swiper.dart';


class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

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

  final List list = [

    "https://cdn.pixabay.com/photo/2022/04/09/19/02/moon-7122089_1280.png",

    "https://cdn.pixabay.com/photo/2021/09/02/10/36/lighthouse-6593162_1280.jpg",

    "https://cdn.pixabay.com/photo/2021/07/15/05/06/flowers-6467492_1280.jpg"


  ];

  @override

  Widget build(BuildContext context) {


    return Scaffold(


      body: ListView(


          physics: NeverScrollableScrollPhysics(),





          children :[



            Container(
              width: double.infinity, height: 550,
              decoration: BoxDecoration(
                gradient : LinearGradient(
                  colors: [(Color(0xffFBFFF2)).withOpacity(1),Color(0xffFFDCDC)],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),

              ),
              child: Stack(

                  alignment: Alignment.topCenter,

                  children: [

                    //가운데기둥

                    Container(width : 300 , margin : EdgeInsets.only(top:30),

                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(
                              150,
                            ),
                            topLeft: Radius.circular(150),
                          ),
                          gradient : LinearGradient(
                              colors: [Color(0xff8688C9).withOpacity(0.5), Color(0xff8688C9).withOpacity(0)],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter)),),

                    //프로필사진

                    Container(width : 220, height: 220, margin : EdgeInsets.only(top:60), padding: EdgeInsets.all(5) ,

                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(150),
                            gradient : LinearGradient(
                                colors: [Color(0xffFFD1D1).withOpacity(0), (Color(0xffFFCDCD)).withOpacity(1)],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter)),


                        child: CircleAvatar(backgroundColor : Colors.transparent ,backgroundImage: AssetImage('/Users/yeomsuyeon/memoleeds/assets/img-10.gif'))),


                    //하얀네모박스

                    Container(width : 340, height: 240, margin : EdgeInsets.only(top:270),

                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),

                          gradient : LinearGradient(
                              colors: [Color(0xffFFFFFF).withOpacity(0.0),(Color(0xffFFFFFF)).withOpacity(0.7), (Color(0xffFFFFFF)).withOpacity(1)],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter)),),

                    //분홍네모박스

                    Positioned(

                      top: 340,

                      child: Container(

                        width : 300, height: 150,

                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),

                            gradient : LinearGradient(
                                colors: [Color(0xffFDE5E6).withOpacity(0), (Color(0xffFDE5E6)).withOpacity(1)],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter)),


                        child: Column(

                          children: [


                            Text('오늘의 기억을 기록해주세요', style: TextStyle(

                                fontSize: 16,color: Color(0xff6A6C9E)
                            ),),


                          ],


                        ),




                      ),),

                    //네모박스 위 글씨

                    Positioned(

                        top: 285,


                        child: Container(

                            child : Text("Today's Memory", style: TextStyle(

                                fontSize: 35, fontFamily: 'Memory',color: Color(0xff1D2B64)
                            ),)



                        )


                    ),




                  ]),
            ),



            Container(

                color: Color(0xffFFDCDC),

                width: double.infinity, height: 160,

                  child: Swiper(




                    control: SwiperControl(
                        color : Colors.white,
                         padding: EdgeInsets.all(20),
                    ),
                    pagination:  null,

                    itemCount: list.length,
                    loop : true,
                    index : 0,
                    autoplay : false,
                    duration : 500,
                    viewportFraction: 0.8,
                    scale: 0.5,
                    scrollDirection : Axis.horizontal,

                    itemBuilder: (BuildContext context, int index){



                      return Component1();

                    },


                )




            ),


            Container( width: double.infinity, height: 500,
                decoration: BoxDecoration(
                    gradient : LinearGradient(
                      colors: [ Color(0xffFFDCDC),Color(0xffFFDCDC),(Color(0xffFBFFF2)).withOpacity(1),],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ))
            )


          ]

    //전체배경












    ),





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
              ,flex: 5,),



            Text('# 그 날, 너와의 첫만남', style: TextStyle(

                fontSize: 18,color: Color(0xff6A6C9E)
            ),),


            Flexible(child : Icon(Icons.favorite, size: 35, color: Color(0xffFF7C94)),flex: 1)

          ],
        )   );
  }
}











