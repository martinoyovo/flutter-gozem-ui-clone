import 'package:flutter/material.dart';
import 'package:flutter_gozem_ui_clone/utils/styles.dart';
import 'package:gap/gap.dart';

class Wallet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      appBar: AppBar(
        elevation: 0,
        title: Text('Portefeuille'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: Colors.white,
            padding: EdgeInsets.only(right: 10, top: 10, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.account_balance_wallet, color: Styles.primaryColor, size: 45,),
                    Gap(5),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Portefeuille'),
                        Text('300 F', style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold,),)
                      ],
                    )
                  ],
                ),
                ElevatedButton(
                  child: Text("Recharge", style: TextStyle(color: Colors.white),),
                  style: ElevatedButton.styleFrom(
                    primary: Styles.primaryColor,
                    elevation: 0,
                    padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10)
                  ),
                  onPressed: () {

                  },
                ),
              ],
            ),
          ),
          Card(
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
            color: Colors.white,
            child: Container(
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  Icon(Icons.search, color: Colors.grey,),
                  /*Divider(
                    thickness: 2,
                    height: 20,
                    color: Colors.grey,
                  )*/
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    width: 1,
                    height: 50,
                    color: Colors.grey,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("De"),
                      Row(
                        children: [
                          Icon(Icons.calendar_today_outlined, color: Styles.primaryColor),
                          Gap(3),
                          Text("Chosir une date")
                        ],
                      ),
                    ],
                  ),
                  Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("De"),
                      Row(
                        children: [
                          Icon(Icons.calendar_today_outlined, color: Styles.primaryColor),
                          Gap(3),
                          Text("Chosir une date")
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 10),
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 7),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: Styles.primaryColor
            ),
            child: Text("13 juillet 2021", style: TextStyle(color: Colors.white),),
          ),
          Gap(10),
          Card(
            color: Colors.white,
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    //mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Monnaie", style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700),),
                      Text("Monnaie de la course: 7040980"),
                      Text("05:52")
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.add_circle, color: Styles.primaryColor),
                          Text('300 F', style: TextStyle(color: Styles.primaryColor))
                        ],
                      ),
                      Text("Solde 300 F")
                    ],
                  )
                ],
              ),
            )
          )
        ],
      ),
    );
  }
}
