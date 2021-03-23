import 'package:flutter/material.dart';
import 'package:fitol/Login.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'RegisterCard.dart';

class Register extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}
class _MyAppState extends State<Register> {
  bool _isSelected = false;

  void _radio() {
    setState(() {
      _isSelected = !_isSelected;
    });
  }

  Widget radioButton(bool isSelected) => Container(
        width: 16.0,
        height: 16.0,
        padding: EdgeInsets.all(2.0),
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(width: 2.0, color: Colors.black)),
        child: isSelected
            ? Container(
                width: double.infinity,
                height: double.infinity,
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.black),
              )
            : Container(),
      );

  Widget horizontalLine() => Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Container(
          width: ScreenUtil.getInstance().setWidth(120),
          height: 1.0,
          color: Colors.black26.withOpacity(.2),
        ),
      );

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil.getInstance()..init(context);
    ScreenUtil.instance =
        ScreenUtil(width: 750, height: 1334, allowFontScaling: true);
    String yaz="";
    return new Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomPadding: true,
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 20.0),
                child: Image.asset("assets/image_02.png"),
              ),
              Expanded(
                child: Container(),
              ),
              Image.asset("assets/image_01.png")
            ],
          ),
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(left: 18.0, right: 18.0, top: 0.0),
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: ScreenUtil.getInstance().setHeight(20),
                  ),
                  RegisterCard(),
                  SizedBox(height: ScreenUtil.getInstance().setHeight(40)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      InkWell(
                        child: Container(
                          width: ScreenUtil.getInstance().setWidth(330),
                          height: ScreenUtil.getInstance().setHeight(100),
                          decoration: BoxDecoration(
                              gradient: LinearGradient(colors: [
                                Color(0xFF17ead9),
                                Color(0xFF6078ea)
                              ]),
                              borderRadius: BorderRadius.circular(6.0),
                              boxShadow: [
                                BoxShadow(
                                    color: Color(0xFF6078ea).withOpacity(.3),
                                    offset: Offset(0.0, 8.0),
                                    blurRadius: 8.0)
                              ]),
                          child: Material(
                            color: Colors.transparent,
                            child: InkWell(
                              onTap: () {
                                yaz="LÜTFEN E-MAİLİNİZE GELEN BİLDİRİMİ ONAYLAYINIZ.";
                              },
                              child: Center(
                                child: Text("KAYIT OL",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: "Poppins-Bold",
                                        fontSize: 18,
                                        letterSpacing: 1.0)),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: ScreenUtil.getInstance().setHeight(30),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      /*Center(
                        child: RaisedButton(
                          padding: const EdgeInsets.all(0.0),
                          textColor: Colors.white,
                          child: Container(
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              colors: <Color>[
                                Colors.cyan,
                                Color(0xFF3D4C8B),
                              ],
                            ),
                          ),
                          padding: const EdgeInsets.all(9.0),
                          child:
                              const Text('KULLANICI GİRİŞ', style: TextStyle(fontSize: 17)),
                          ),
                          onPressed: (){
                            Navigator.push(
                              context, MaterialPageRoute(
                              builder:(BuildContext context) => Register(), 
                              ),
                            );
                          },
                        ),
                      ),*/
                      Text(
                        yaz="Lütfen E-Mailinizi Onaylayınız.     ",
                        style: TextStyle(fontFamily: "Poppins-Bold",fontSize: 16,color: Colors.blueGrey),
                        ),
                      Center(
                        child: Container(
                          child: Ink(
                            decoration: ShapeDecoration(
                              color: Color(0xFF6078ea),
                              shape: CircleBorder(),
                            ),
                            child: IconButton(
                              icon: Icon(Icons.add_to_home_screen),
                              color: Colors.white,
                              onPressed: () {
                                Navigator.pop(context,MaterialPageRoute(
                          builder:(BuildContext context) => MyApp(), 
                          ),);
                              }
                            ),
                          ),
                        ),
                      ),

                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Image.asset(
                          "assets/logo.png",
                          width: ScreenUtil.getInstance().setWidth(60),
                          height: ScreenUtil.getInstance().setHeight(60),
                        ),
                        Text("FİTOL",
                            style: TextStyle(
                                fontFamily: "Poppins-Bold",
                                fontSize: ScreenUtil.getInstance().setSp(46),
                                letterSpacing: .6,
                                fontWeight: FontWeight.bold))
                    ],
                  ),
                  
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}