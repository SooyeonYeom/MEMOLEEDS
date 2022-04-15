import 'dart:html';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter_svg/flutter_svg.dart' ;

import 'package:image_picker/image_picker.dart';




import 'package:flutter_swiper/flutter_swiper.dart';




class Write extends StatelessWidget {
  const Write({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'MEMO, LEEDS',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        appBarTheme: const AppBarTheme(
        backgroundColor: Color(0xffDCB8E4),
    foregroundColor: Colors.white,
    titleTextStyle: TextStyle(fontFamily: 'Memory', fontSize: 17))
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




  @override

  Widget build(BuildContext context) {


    return Scaffold(



      appBar: AppBar(


       actions :



       [IconButton(
         visualDensity: VisualDensity(horizontal: -4.0, vertical: -4.0), //이부분이 줄여주는 부분이다.
         padding: EdgeInsets.zero,
         icon: Icon(
           Icons.close,
           color: Colors.white, size: 25,
         ),
         //iconSize: 20,
         onPressed: (){


         },
       ),],


        toolbarHeight: 50,
        title: Text('2022 . 11 . 17', style: TextStyle(color : Color(0xffFFFFFF))),
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





      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient : LinearGradient(
            colors: [(Color(0xffFBFFF2)).withOpacity(1), Color(0xffFFDCDC),Color(0xffFFDCDC)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,

          ),

        ),
         child : SingleChildScrollView(


             child : Column(


               children: [


                 Column(


                   children: [



                     MyCustomForm(),





                     Container(
                         color : Color(0xffFFDCDC),

                         width : double.infinity, height:1000,

                         ),






                   ],

                 )








               ],



             )



          )




          )


    );








  }
}



class MyCustomForm extends StatefulWidget {
  const MyCustomForm({Key? key}) : super(key: key);




  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

// Create a corresponding State class.
// This class holds data related to the form.
class MyCustomFormState extends State<MyCustomForm> {

  final _formKey = GlobalKey<FormState>();

  final List list = [

    "https://cdn.pixabay.com/photo/2022/04/09/19/02/moon-7122089_1280.png",

    "https://cdn.pixabay.com/photo/2021/09/02/10/36/lighthouse-6593162_1280.jpg",

    "https://cdn.pixabay.com/photo/2021/07/15/05/06/flowers-6467492_1280.jpg"


  ];


  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,


        children: [




          //사진추가
          SingleChildScrollView(

            scrollDirection: Axis.horizontal,

            child :

            Row(

                mainAxisAlignment: MainAxisAlignment.spaceAround,


                children: [




                  Container(
                      margin: EdgeInsets.all(10),
                      width: 200,
                      height: 200,
                      decoration: BoxDecoration(

                          border : Border.all(width: 2, color :  Color(0xffDCB8E4)),

                          borderRadius: BorderRadius.circular(10),
                          color:  Colors.transparent
                        // image: DecorationImage(image: FileImage(f), fit: BoxFit.cover)
                      ),

                     child : Icon(Icons.add_a_photo, size: 80, color: Color(0xffDCB8E4),)
                  )




                ]

            ),),





          //태그추가
          SingleChildScrollView(

            scrollDirection: Axis.horizontal,

            child :

            Row(



                children: [


                  Container(
                      margin: EdgeInsets.all(10),
                      width: 100,
                      height: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color:  Color(0xffFF7C94)
                        // image: DecorationImage(image: FileImage(f), fit: BoxFit.cover)
                      ),

                      child :
                      Row(

                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                        children: [


                          Flexible( child : Icon(Icons.tag, size: 20, color: Colors.white,), flex: 1, ),

                          Flexible( child : Text('박민규', style: TextStyle(color: Colors.white, fontSize: 15) ), flex: 9,)

                        ],)),



                  Container(
                    margin: EdgeInsets.all(10),
                    width: 100,
                  height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  color:  Color(0xffFF7C94)
                    // image: DecorationImage(image: FileImage(f), fit: BoxFit.cover)
                ),

                    child :
                    Row(

                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                      children: [


                        Flexible( child : Icon(Icons.tag, size: 20, color: Colors.white,), flex: 1, ),

                       Flexible( child : Text('염수경', style: TextStyle(color: Colors.white, fontSize: 15) ), flex: 9,)

              ],)),


                  Container(
                      margin: EdgeInsets.all(10),
                      width: 100,
                      height: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color:  Color(0xffFF7C94)
                        // image: DecorationImage(image: FileImage(f), fit: BoxFit.cover)
                      ),

                      child :
                      Row(

                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                        children: [


                          Flexible( child : Icon(Icons.tag, size: 20, color: Colors.white,), flex: 1, ),

                          Flexible( child : Text('염수연', style: TextStyle(color: Colors.white, fontSize: 15) ), flex: 9,)

                        ],)),



                  Container(
                      margin: EdgeInsets.all(10),
                      width: 100,
                      height: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color:  Color(0xffFF7C94)
                        // image: DecorationImage(image: FileImage(f), fit: BoxFit.cover)
                      ),

                      child :
                      Row(

                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                        children: [


                          Flexible( child : Icon(Icons.tag, size: 20, color: Colors.white,), flex: 1, ),

                          Flexible( child : Text('박민규', style: TextStyle(color: Colors.white, fontSize: 15) ), flex: 9,)

                        ],)),



                  Container(
                      margin: EdgeInsets.all(10),
                      width: 100,
                      height: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color:  Color(0xffFF7C94)
                        // image: DecorationImage(image: FileImage(f), fit: BoxFit.cover)
                      ),

                      child :
                      Row(

                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                        children: [


                          Flexible( child : Icon(Icons.tag, size: 20, color: Colors.white,), flex: 1, ),

                          Flexible( child : Text('염수경', style: TextStyle(color: Colors.white, fontSize: 15) ), flex: 9,)

                        ],)),


                  Container(
                      margin: EdgeInsets.all(10),
                      width: 100,
                      height: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color:  Color(0xffFF7C94)
                        // image: DecorationImage(image: FileImage(f), fit: BoxFit.cover)
                      ),

                      child :
                      Row(

                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                        children: [


                          Flexible( child : Icon(Icons.tag, size: 20, color: Colors.white,), flex: 1, ),

                          Flexible( child : Text('염수연', style: TextStyle(color: Colors.white, fontSize: 15) ), flex: 9,)

                        ],)),





                ]

          ),),

          //글작성폼(스와이퍼)
          Container(


              color: Color(0xffFFDCDC),

              width: double.infinity, height: 500,

              child: Swiper(


                control: SwiperControl(
                  color : Color(0xffFFFFFF),
                  padding: EdgeInsets.all(10),
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



                  return Writing();

                },


              )




          ),



          //글전송버튼
          ElevatedButton(


               style: ButtonStyle(foregroundColor: MaterialStateProperty.all(Colors.white),

                 backgroundColor: MaterialStateProperty.all(Color(0xffFF7C94))

               ),



              onPressed: () {

                if (_formKey.currentState!.validate()) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('좋은 기억을 기록 중입니다..')),
                  );
                }
              },
              child: const Text('기록하기'),
            ),
        ],
      ),
    );
  }
}

//글작성폼(찐)
class Writing extends StatelessWidget {
  const Writing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(


        padding: const EdgeInsets.symmetric(vertical: 16.0),
        child : ListView(

      children: [


             TextFormField(


          initialValue:  '제목',


          maxLines: 1,

          decoration :  InputDecoration(

            enabledBorder: UnderlineInputBorder(


                borderRadius: BorderRadius.only( topLeft : Radius.circular( 12.0),topRight:Radius.circular( 12.0) ),


                borderSide: BorderSide( color: Color(0xffFFFFFF) )

            ),


            focusedBorder: UnderlineInputBorder(

                borderSide: BorderSide( color: Color(0xffFFFFFF) )

            ),



            filled: true,

            fillColor: Colors. white,


          ),



          style: TextStyle(color: Color(0xff6A6C9E)) ,

          cursorColor:  Color(0xffFF7C94),




          validator: (value) {
            if (value == null || value.isEmpty) {
              return '기록이 비어있어요';
            }
            return null;
          },
        ),




        Container(
            color : Colors.transparent,

            width : double.infinity, height:2

        ),



        TextFormField(

          initialValue:  '글',

          maxLines: 20,

          decoration :  InputDecoration(




            enabledBorder: UnderlineInputBorder(


               borderRadius: BorderRadius.only( bottomLeft : Radius.circular( 12.0), bottomRight: Radius.circular( 12.0) ),

                borderSide: BorderSide( color: Color(0xffFFFFFF) )

            ),


            focusedBorder: UnderlineInputBorder(

                borderSide: BorderSide( color: Color(0xffFFFFFF) )

            ),




            filled: true,

            fillColor: Colors. white,


          ),



          style: TextStyle(color: Color(0xff6A6C9E)) ,

          cursorColor:  Color(0xffFF7C94),




          validator: (value) {
            if (value == null || value.isEmpty) {
              return '기록이 비어있어요';
            }
            return null;
          },
        ),





      ],


    ));
  }
}
