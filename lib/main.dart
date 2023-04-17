import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'add_traveler.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:mrt7al/my_booking.dart';
import 'package:mrt7al/notifications.dart';



void main() {
  runApp(MyHomeApp());
}

class MyHomeApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return Myhomstate();
  }

}
class Myhomstate extends State<MyHomeApp>{
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
  // GlobalKey<CurvedNavigationBarState>_bottomNavigationKey=GlobalKey();


    int  _currentIndex=0;
    final items=<Widget>[
      Icon(Icons.home,size: 30,),
      Icon(Icons.wallet_travel,size: 30,),
      Icon(Icons.receipt_outlined,size: 30,),
      Icon(Icons.more_horiz,size: 30,),
    ];

    return GetMaterialApp(

      getPages: [
        GetPage(name: '/', page: ()=>MyHomeApp()),
        GetPage(name: '/', page: ()=>New_Travel()),
        GetPage(name: '/', page: ()=>My_booking()),
        GetPage(name: '/', page: ()=>Notifications())
      ],
      title: 'Mrt7al',
      debugShowCheckedModeBanner: false,
      home: Home(),
    );


  }

  }
  class Home extends StatefulWidget {
    const Home({Key? key}) : super(key: key);
  
    @override
    State<Home> createState() => _HomeState();
  }
  
  class _HomeState extends State<Home> {
    @override
    Widget build(BuildContext context) {
      return Scaffold(

        //////////قائمة ال ppbar وتحتوي على النص والأيقونة

        appBar: AppBar(

          backgroundColor: Colors.red,//لون خلفية الapar
          ///////////////////////////
          leading:
          IconButton(onPressed: () {
            Get.to(Notifications());
          },

            icon: Icon(Icons.notifications),
          ),
          //أيقونة الإشعارات
          /////////////////////////////////////

          //////////////////////////////////////
          title: Row(


            mainAxisAlignment: MainAxisAlignment.end,

            children: [
              MediaQuery(data: MediaQuery.of(context).copyWith(
                textScaleFactor: 1.5,
              ),
                child:
                Text('قائمة المسافرين',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Cairo',
                    fontWeight: FontWeight.bold,

                  ),
                ),
              ),
            ],
          ),
          //  هنا يوجد النص مع خصائصة وانة يكون في الجهة اليمنى
          ////////////////////////////////////////
        ),
//هنا نهاية ال appbar//////////////////

        //  بداية الصفحة التي تحتوي على بوتون (إضافة مسافر جديد)وقائمة المسافرين
        body: Column(

          children:[
            ///////////////////////////////////////////////////
            Padding(
              padding: EdgeInsets.all(25),

              child:
              ElevatedButton(


                onPressed: (){
                  Get.to((New_Travel()));
                  //  Get.off(SecondHome());

                },
                style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all(Size(350, 55),
                  ),
                  backgroundColor: MaterialStateProperty.all(Colors.red),





                ),

                //      هنا يتواجد البوتون ولون خلفيتة وحجمة
                ///////////////////////////////////////////////////

                /////////////////////////////////////////
                child: Text(' إضافة مسافر جديد',

                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width/15,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Cairo',


                  ),

                ),

              ),
              //            هنا يتواجد النص اللي على البوتون وخصائصة مع قوس الإغلاق حق ال ElevatedButton
              ///////////////////////////////////////
            ),
            // ح////        نهاية الــ Padding حق البوتون

            //////////////////////////////////////
            //        بداية البادينج حق النص أسفل البوتون
            Padding(

              padding: EdgeInsets.all(5),
              child: Text('قائمة المسافرين',
                textDirection: TextDirection.rtl,
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width/15,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Cairo',

                ),),



            ),
            //                           وجود النص مع خصائصة ونهاية البادينج
            /////////////////////////////////////////

            //////////////////////////////////////
            //            هنا بداية القائمة باسماء المسافرين
            Expanded(
              child: ListView(
                //shrinkWrap: true,
                children: [
                  ListTile(

                    title: Text('اسامة الشرعبي',
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width/20,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Cairo',
                      ),

                      textDirection: TextDirection.rtl,
                    ),
                    subtitle: Text('رقم جواز السفر',
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width/23,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Cairo',
                      ),

                    ),
                  ),
                  ListTile(
                    title: Text('عزالدين مراد',
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width/20,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Cairo',
                      ),
                      textDirection: TextDirection.rtl,
                    ),
                    subtitle: Text('رقم جواز السفر',
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width/23,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Cairo',
                      ),
                    ),
                  ),

                  ListTile(

                    title: Text('خطاب',
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width/20,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Cairo',
                      ),
                    ),
                    subtitle: Text('رقم جواز السفر',
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width/23,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Cairo',
                      ),

                    ),
                  ),
                  ListTile(

                    title: Text('ياسين',
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width/20,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Cairo',
                      ),
                    ),
                    subtitle: Text('رقم جواز السفر',
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width/23,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Cairo',
                      ),

                    ),
                  ),
                  ListTile(

                    title: Text('انس ',
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width/20,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Cairo',
                      ),
                    ),
                    subtitle: Text('رقم جواز السفر',
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width/23,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Cairo',
                      ),

                    ),
                  ),

                ],
              ),
            ),

            //              نهاية اإكس بندد التي تحتوي على اأسماء المسافرين
            //        طبعا كله نسخ لصق مع حصائص النص وإبن النص
            ///////////////////////////////////////
            ElevatedButton.icon(
                onPressed: (){
                  Get.to(My_booking());
                },
                icon: Icon(Icons.receipt_outlined),
                label: Text('حجوزاتي')),
          ],// نهاية ال children الاب اللي تحت الكولوم
        ),// نهاية الكولوم
        ///////////نهاية الصفحة حق قائمة المسافرين ////////////

        bottomNavigationBar: CurvedNavigationBar(

          backgroundColor:Colors.white ,
          color: Colors.red,

          height: 50,
          items: [

            Icon(Icons.more_horiz),
            Icon(Icons.receipt_outlined,),
            Icon(Icons.wallet_travel),
            Icon(Icons.home),


          ],
          //onTap لللرؤية المستقبلية
          //
        ),
      );
    }
  }
  






