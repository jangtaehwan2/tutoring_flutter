import 'package:flutter/material.dart';

class MypageScreen extends StatelessWidget {
  const MypageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.fromLTRB(10, 25, 10, 5),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
            border: Border.all(
                color: Colors.black12,
                width: 3
            )
        ),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 50,
                    height: 150,
                    child: Icon(Icons.people_alt_rounded, size: 80,),
                  ),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('USER01', style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20
                        ),),
                        Text('user01@tutoring.com'),
                      ],
                    ),
                  ),
                  Container(
                  )
                ],
              ),
              width: double.infinity,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Colors.black12,
                  width: 3
                )
              ),
              height: 150,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconButton(onPressed: (){}, icon: Icon(Icons.account_balance_rounded, size: 50),),
                      IconButton(onPressed: (){}, icon: Icon(Icons.book_rounded, size: 50),),
                      IconButton(onPressed: (){}, icon: Icon(Icons.settings, size: 50),),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                    child: Row(

                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text('내 튜터링', style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold
                        ),),Text('미션    ', style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold
                        ),),Text('설정', style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold
                        ),),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
