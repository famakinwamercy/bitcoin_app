import 'package:bitcoin_app/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TabBarV extends StatefulWidget {
  const TabBarV({Key? key}) : super(key: key);

  @override
  _TabBarVState createState() => _TabBarVState();
}

class _TabBarVState extends State<TabBarV> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
              leading: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.grey.withOpacity(0.1)),
                  child: Center(
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.black,
                        size: 17,
                      ),
                    ),
                  ),
                ),
              ),
              elevation: 0,
              backgroundColor: Colors.transparent,
              title: Text(
                "Transact",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontFamily: "MavenPro"),
              ),
              centerTitle: true,
          ),
          body: Column(children: [
            SizedBox(height: 13,),
            Container(height: 45,
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),
                  border:Border.all(color: Colors.blueGrey.withOpacity(0.7)),
                  color: Colors.grey.withOpacity(0.1)),
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: TabBar(labelColor:Colors.white,unselectedLabelColor:Color(0xFF39415F),
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Color(0xFF39415F),), tabs: [Tab(text: "Send",
              ),Tab(text: "Receive",)],),
            ),),SizedBox(height: 13,),
          Expanded(
            child: TabBarView(children: [
              HomePage(),
              HomePage()
            ],),
          ),
        ],),
        ));
  }
}
