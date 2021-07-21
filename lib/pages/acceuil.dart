import 'package:flutter/material.dart';
import 'package:flutter_gozem_ui_clone/pages/wallet.dart';
import 'package:flutter_gozem_ui_clone/utils/styles.dart';
import 'package:flutter_gozem_ui_clone/widgets/custom_slider.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class Acceuil extends StatelessWidget {
  List<String> servicesList = ["Zem", "Tricycle", "Bagage", "Taxi", "Clim+", "Shopping", "Food", "Gaz", "Profil", "Paramètres", "Aide"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        leading: Icon(Icons.menu, color: Styles.primaryColor),
        title: Text("GOZEM", style: TextStyle(
          fontSize: 40,
          color: Styles.primaryColor,
        ),),
        actions: [
          Stack(
            children: [
              IconButton(
                  onPressed: () {

              }, icon: Icon(
                Icons.notifications,
                color: Styles.primaryColor,
                size: 40,
              )),
              Positioned(
                right: 5,
                top: 0,
                child: Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    shape: BoxShape.circle
                  ),
                  child: Text("O", style: TextStyle(color: Colors.white),),
                ),
              )
            ],
          )
        ],
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
        children: [
          Container(
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Styles.blueColor,
              borderRadius: BorderRadius.circular(10)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () =>  Get.to(() => Wallet()),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Portefeuille", style: TextStyle(color: Colors.white),),
                      Text("300 F", style: TextStyle(color: Colors.white))
                    ],
                  ),
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        Icon(Icons.history, color: Colors.white,),
                        Text("Historique", style: TextStyle(color: Colors.white),)
                      ],
                    ),
                    Gap(10),
                    Column(
                      children: [
                        Icon(Icons.add, color: Colors.white,),
                        Text("Recharger", style: TextStyle(color: Colors.white),)
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
          Gap(20),
          GridView.count(
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            padding: EdgeInsets.all(5),
            //childAspectRatio: 0.,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 4,
            children: servicesList.map<Widget>((e) {
              return Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(7),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 2,
                      spreadRadius: 3
                    )
                  ]
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.ac_unit),
                    Gap(5),
                    Text(e),
                  ],
                ),
              );
            }).toList(),
          ),
          Gap(20),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("Actualités et Promotions", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),),
            ],
          ),
          Gap(10),
          CustomSlider()
        ],
      ),
    );
  }
}
