import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      width: double.infinity,
      height: ScreenUtil.getInstance().setHeight(1550),
      decoration: BoxDecoration(
          color: Colors.white12,
          borderRadius: BorderRadius.circular(8.0),
          boxShadow: [
            BoxShadow(
                color: Colors.black12,
                offset: Offset(0.0, 15.0),
                blurRadius: 15.0),
            BoxShadow(
                color: Colors.black12,
                offset: Offset(0.0, -10.0),
                blurRadius: 10.0),
          ]),
      child: Padding(
        padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("KAYIT OL",
                style: TextStyle(
                  color: Colors.black,
                    fontSize: ScreenUtil.getInstance().setSp(45),
                    fontFamily: "Poppins-Bold",
                    letterSpacing: .6)),
            Card(
              elevation: 6.0,
              child: TextFormField(
                validator: (e){
                  if(e.isEmpty){
                    return "Lütfen Kullanıcı İsminizi Giriniz.";
                  }
                },
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.w300,
                ),
                decoration: InputDecoration(
                    prefixIcon: Padding(
                        padding:
                           EdgeInsets.only(left: 20, right: 15),
                        child:
                           Icon(Icons.person, color: Colors.greenAccent),
                     ),
                      contentPadding: EdgeInsets.all(18),
                      labelText: "Kullanıcı Adı"),
              ),
            ),

            Card(
              elevation: 6.0,
              child: TextFormField(
                validator: (e){
                  if(e.isEmpty){
                    return "Lütfen Email Giriniz.";
                  }
                },
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.w300,
                ),
                decoration: InputDecoration(
                    prefixIcon: Padding(
                        padding: EdgeInsets.only(left: 20, right: 15),
                                  child: Icon(Icons.email,
                                  color: Colors.lightBlueAccent),
                     ),
                      contentPadding: EdgeInsets.all(18),
                      labelText: "Email"),
              ),
            ),

            Card(
              elevation: 6.0,
              child: TextFormField(
                validator: (e){
                  if(e.isEmpty){
                    return "Lütfen Şifrenizi Giriniz.";
                  }
                },
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.w300,
                ),
                obscureText: true,
                decoration: InputDecoration(
                    prefixIcon: Padding(
                        padding: EdgeInsets.only(left: 20, right: 15),
                                  child: Icon(Icons.phonelink_lock,
                                  color: Colors.red),
                     ),
                      contentPadding: EdgeInsets.all(18),
                      labelText: "Şifre"),
              ),
            ),

            Card(
              elevation: 6.0,
              child: TextFormField(
                validator: (e){
                  if(e.isEmpty){
                    return "Lütfen Şifrenizi Giriniz.";
                  }
                },
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.w300,
                ),
                obscureText: true,
                decoration: InputDecoration(
                    prefixIcon: Padding(
                        padding: EdgeInsets.only(left: 20, right: 15),
                                  child: Icon(Icons.phonelink_lock,
                                  color: Colors.redAccent),
                     ),
                      contentPadding: EdgeInsets.all(18),
                      labelText: "Şifre Tekrar"),
              ),
            ),

            Card(
              elevation: 6.0,
              child: TextFormField(
                validator: (e){
                  if(e.isEmpty){
                    return "Lütfen Boy Uzunluğunuzu Giriniz.";
                  }
                },
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.w300,
                ),
                decoration: InputDecoration(
                    prefixIcon: Padding(
                        padding: EdgeInsets.only(left: 20, right: 15),
                                  child: Icon(Icons.merge_type,
                                  color: Colors.yellow),
                     ),
                      contentPadding: EdgeInsets.all(18),
                      labelText: "Boy"),
              ),
            ),

            Card(
              elevation: 6.0,
              child: TextFormField(
                validator: (e){
                  if(e.isEmpty){
                    return "Lütfen Kilonuzu Giriniz.";
                  }
                },
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.w300,
                ),
                decoration: InputDecoration(
                    prefixIcon: Padding(
                        padding: EdgeInsets.only(left: 20, right: 15),
                                  child: Icon(Icons.restaurant_menu,
                                  color: Colors.indigo),
                     ),
                      contentPadding: EdgeInsets.all(18),
                      labelText: "Kilo"),
              ),
            ),

            Card(
              elevation: 6.0,
              child: TextFormField(
                validator: (e){
                  if(e.isEmpty){
                    return "Lütfen Kilonuzu Giriniz.";
                  }
                },
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.w300,
                ),
                decoration: InputDecoration(
                    prefixIcon: Padding(
                        padding: EdgeInsets.only(left: 20, right: 15),
                                  child: Icon(Icons.accessibility_new,
                                  color: Colors.orange),
                     ),
                      contentPadding: EdgeInsets.all(18),
                      labelText: "Kas"),
              ),
            ),

            Card(
              elevation: 6.0,
              child: TextFormField(
                validator: (e){
                  if(e.isEmpty){
                    return "Lütfen Kilonuzu Giriniz.";
                  }
                },
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.w300,
                ),
                decoration: InputDecoration(
                    prefixIcon: Padding(
                        padding: EdgeInsets.only(left: 20, right: 15),
                                  child: Icon(Icons.local_pizza,
                                  color: Colors.cyanAccent),
                     ),
                      contentPadding: EdgeInsets.all(18),
                      labelText: "Yağ"),
              ),
            ),

            Card(
              elevation: 6.0,
              child: TextFormField(
                validator: (e){
                  if(e.isEmpty){
                    return "Lütfen Kilonuzu Giriniz.";
                  }
                },
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.w300,
                ),
                decoration: InputDecoration(
                    prefixIcon: Padding(
                        padding: EdgeInsets.only(left: 20, right: 15),
                                  child: Icon(Icons.access_time,
                                  color: Colors.black),
                     ),
                      contentPadding: EdgeInsets.all(18),
                      labelText: "Yaş"),
              ),
            ),

            Card(
              elevation: 6.0,
              child: TextFormField(
                validator: (e){
                  if(e.isEmpty){
                    return "Lütfen Kilonuzu Giriniz.";
                  }
                },
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.w300,
                ),
                decoration: InputDecoration(
                    prefixIcon: Padding(
                        padding: EdgeInsets.only(left: 20, right: 15),
                                  child: Icon(Icons.supervisor_account,
                                  color: Colors.indigo),
                     ),
                      contentPadding: EdgeInsets.all(18),
                      labelText: "Erkek / Kadın"),
              ),
            ),

            SizedBox(
              height: ScreenUtil.getInstance().setHeight(35),
            ),
          ],
        ),
      ),
    );
  }
}