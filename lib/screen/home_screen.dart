import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Scaffold(
        appBar: AppBar(
          title: Text('HomeScreen',style: TextStyle(
            color: Colors.black
          )),
          leading: IconButton(
            onPressed: (){},
            icon: Icon(Icons.menu, color: Colors.black,),
          ),
          backgroundColor: Colors.white,
        ),
        body: Container(
          color: Colors.white,
          padding: EdgeInsets.all(5),
          width: double.infinity,
          child: ListView(children: [
            StudyList(),
            StudyList(),
            StudyList(),
            StudyList(),
            StudyList(),
            StudyList(),
            StudyList(),
          ]),
        ),
      ),
    );
  }
}

class StudyList extends StatelessWidget {
  const StudyList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
            top: BorderSide(
                color: Colors.black12,
                width: 2
            )
        ),
      ),
      child: Row(
        children: [
          Flexible(child: Container(padding : EdgeInsets.all(15),child: Image.asset('assets/java.png')), flex: 1,),
          Flexible(child: Container(
            padding: EdgeInsets.fromLTRB(15, 20, 5, 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('1:1 자바 강의', style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                ),),
                Text('#Java #OOP', style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w300
                ),),
                Text('비대면 강의로 진행 합니다. 강의 진행은 어떻게 한다는 내용', style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w200
                ),),
              ],
            ),
          ), flex: 1,)
        ],
      ),
    );
  }
}
