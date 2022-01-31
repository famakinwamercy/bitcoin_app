import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
          children: [
          SizedBox(height: 20,),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                decoration: InputDecoration(contentPadding: EdgeInsets.only(left: 30,top: 40),
                    focusedBorder:OutlineInputBorder(
                        borderSide: BorderSide(color:Colors.blueGrey.withOpacity(0.6) ),
                        borderRadius: BorderRadius.circular(15)),
                    enabledBorder:OutlineInputBorder(
                        borderSide: BorderSide(color:Colors.blueGrey.withOpacity(0.6) ),
                        borderRadius: BorderRadius.circular(15)),
                    suffixIcon: IconButton(
                      icon: Icon(
                        Icons.keyboard_arrow_down_outlined,
                        color: Colors.black,),
                      onPressed: () {},),
                    labelText: "Select Crypto",labelStyle: TextStyle(color: Color(0xFF39415F),
                        fontFamily:"MavenPro",fontWeight: FontWeight.w600
                    ),
                    hintText: "Bitcoin (BTC)",hintStyle: TextStyle(color: Color(0xFF39415F),
                        fontFamily:"MavenPro",fontWeight: FontWeight.w700
                    )),
              ),
            ),SizedBox(height: 20,),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                decoration: InputDecoration(contentPadding: EdgeInsets.only(left: 30,top: 40),
                    focusedBorder:OutlineInputBorder(
                    borderSide: BorderSide(color:Colors.blueGrey.withOpacity(0.6) ),borderRadius: BorderRadius.circular(15)),
                  enabledBorder:OutlineInputBorder(
                      borderSide: BorderSide(color:Colors.blueGrey.withOpacity(0.6) ),
                      borderRadius: BorderRadius.circular(15)),
                    suffixIcon: IconButton(
                      icon: Icon(
                        Icons.keyboard_arrow_down_outlined,
                        color: Colors.black,),
                      onPressed: () {},),
                    labelText: "Network",labelStyle: TextStyle(color: Color(0xFF39415F),
                        fontFamily:"MavenPro",fontWeight: FontWeight.w600),
                    hintText: "Bitcoin",hintStyle: TextStyle(color: Color(0xFF39415F),fontFamily:"MavenPro",
                        fontWeight: FontWeight.w600
                    )),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(height: 60,
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                keyboardType:  TextInputType.multiline,minLines: 2,maxLines: 5,
                decoration: InputDecoration(contentPadding: EdgeInsets.only(left: 30,top: 25,),
                    focusedBorder:OutlineInputBorder(
                    borderSide: BorderSide(color:Colors.blueGrey.withOpacity(0.6) ),borderRadius: BorderRadius.circular(15)),
                  enabledBorder:OutlineInputBorder(
                      borderSide: BorderSide(color:Colors.blueGrey.withOpacity(0.6) ),
                      borderRadius: BorderRadius.circular(15)),
                    suffixIcon: Image.asset("assets/images/copy.jpg"),
                    labelText: "Address",labelStyle: TextStyle(color: Color(0xFF39415F),
                        fontFamily:"MavenPro",fontWeight: FontWeight.w600),
                    hintText: "1JNHDHSKDEJD9345JSIDNSEKRO\n3890",
                    hintStyle: TextStyle(color: Color(0xFF39415F),fontWeight:FontWeight.w500,fontSize: 15,
                    fontFamily:"MavenPro")),),
            ),
            SizedBox(
              height: 18,
            ),
            Image.asset("assets/images/qr code 12.jpg"),
            SizedBox(
              height: 8,
            ),
            Text("Send only BTC to this address",style: TextStyle(fontFamily: "MavenPro", color: Colors.black,
                fontWeight: FontWeight.w500),),
            SizedBox(
              height: 8,
            ),
            Container(
              height: 90,
              width: 320,
              decoration: BoxDecoration(border: Border.all(width: 2,color: Colors.white12),
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.greenAccent.withOpacity(0.3)),
              child: Column(
                children: [SizedBox(height: 10,),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 22.0,bottom: 15),
                      child: Text("Minimum Deposit",style: TextStyle(fontSize: 12),),
                    ),SizedBox(width: 30,),
                    Column(
                      children: [
                        Text("0.0000001 BTC",
                          style: TextStyle(fontWeight: FontWeight.w500,fontSize: 12),),
                       Padding(
                         padding: const EdgeInsets.only(left: 45.0),
                         child: Row(
                           children: [Image.asset("assets/images/Group 350.png",color: Colors.grey.shade900,),
                             Text("\$1.00",
                                style: TextStyle(color: Colors.grey,fontSize: 12,fontFamily:"MavenPro"),),
                           ],
                         ),
                       ),
                      ],
                    )],
                ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("Expected Arrival",style: TextStyle(fontSize: 12),),SizedBox(width: 20,),
                      Text("1 network confirmation",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 12),)
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("Expected Unlock",style: TextStyle(fontSize: 12),),SizedBox(width: 20,),
                      Text("1 network confirmation",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 12),)
                    ],
                  )
                ],
              ),
            ),SizedBox(height:20),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [Container(width: 138,height: 50,margin: EdgeInsets.symmetric(horizontal: 20),
              child: ElevatedButton(style:ElevatedButton.styleFrom(
                  primary: Color(0xFFF39415F),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
                onPressed: () { },child: Center(child: Text("Save Image",style: TextStyle(color: Colors.white),)),),),
                Container(width: 138,height: 50,margin: EdgeInsets.symmetric(horizontal: 20),
                  child: ElevatedButton(style:ElevatedButton.styleFrom(
                      primary: Colors.greenAccent,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
                    onPressed: () { },child: Text("Share",style: TextStyle(color: Colors.white),),),)
            ],)
          ],
        ));

  }
}
