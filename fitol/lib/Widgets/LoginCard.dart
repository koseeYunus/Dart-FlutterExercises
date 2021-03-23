import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FormCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      width: double.infinity,
      height: ScreenUtil.getInstance().setHeight(500),
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
            Text("Giriş",
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
                  fontSize: 16,
                  fontWeight: FontWeight.w300,
                ),
                decoration: InputDecoration(
                    prefixIcon: Padding(
                        padding:
                           EdgeInsets.only(left: 20, right: 15),
                        child:
                           Icon(Icons.person, color: Colors.black),
                     ),
                      contentPadding: EdgeInsets.all(18),
                      labelText: "Kullanıcı Adı"),
              ),
            ),
            SizedBox(
              height: ScreenUtil.getInstance().setHeight(30),
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
                  fontSize: 16,
                  fontWeight: FontWeight.w300,
                ),
                obscureText: true,
                decoration: InputDecoration(
                    prefixIcon: Padding(
                        padding: EdgeInsets.only(left: 20, right: 15),
                                  child: Icon(Icons.phonelink_lock,
                                  color: Colors.black),
                     ),
                      contentPadding: EdgeInsets.all(18),
                      labelText: "Şifre"),
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
