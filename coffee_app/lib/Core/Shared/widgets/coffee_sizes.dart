
import 'package:coffee_app/Core/Constants/colors_const.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CoffeeSizes extends StatefulWidget {
  const CoffeeSizes({
    super.key,
  });

  @override
  State<CoffeeSizes> createState() => _CoffeeSizesState();
}

class _CoffeeSizesState extends State<CoffeeSizes> {
Color backgroundColor1=ConstColors.backgroundColor;
Color coffeeColor1= ConstColors.blackColor;
Color backgroundColor2=ConstColors.backgroundColor;
Color coffeeColor2= ConstColors.blackColor;Color 
backgroundColor3=ConstColors.backgroundColor;
Color coffeeColor3= ConstColors.blackColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 28),
          child: GestureDetector(
            onTap: (() {
              setState(() {
                if(backgroundColor1==ConstColors.backgroundColor){

                        backgroundColor1=ConstColors.primaryColor;
                        backgroundColor2=ConstColors.backgroundColor;
                        backgroundColor3= ConstColors.backgroundColor;
                               coffeeColor1=ConstColors.backgroundColor;
                      coffeeColor2=ConstColors.blackColor;
                        coffeeColor3= ConstColors.blackColor;
                }
               else{
                backgroundColor1=ConstColors.backgroundColor;
                coffeeColor1=ConstColors.blackColor;
               }
              });
            }),
            child: Container(
             
              decoration:BoxDecoration(
                color: backgroundColor1,
                borderRadius: BorderRadius.circular(10)
              ) ,
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  children: [
                      Image.asset("Assets/images/coffeCup.png",width: 16,height: 24,color: coffeeColor1,)
                  
                          ,Padding(
                            padding: const EdgeInsets.symmetric(vertical: 4),
                            child: Text("Small",style: GoogleFonts.nunito(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            color: coffeeColor1,
                            )),
                          ),
                            Text("12 Oz",style: GoogleFonts.nunito(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: coffeeColor1,
                          )),
                  ],
                ),
              ),
            ),
          ),
        ),
              const SizedBox(width: 22,),

        Padding(
          padding: const EdgeInsets.only(top: 12),
          child: GestureDetector(
           onTap: (() {
              setState(() {
                 if(backgroundColor2==ConstColors.backgroundColor){

                        backgroundColor2=ConstColors.primaryColor;
                        backgroundColor3=ConstColors.backgroundColor;
                        backgroundColor1= ConstColors.backgroundColor;
                               coffeeColor2=ConstColors.backgroundColor;
                      coffeeColor3=ConstColors.blackColor;
                        coffeeColor1= ConstColors.blackColor;
                }
               else{
                backgroundColor2=ConstColors.backgroundColor;
                coffeeColor2=ConstColors.blackColor;
               }
              });
            }),
            child: Container(
             
              decoration:BoxDecoration(
                color: backgroundColor2,
                borderRadius: BorderRadius.circular(10)
              ) ,
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  children: [
                      Image.asset("Assets/images/coffeCup.png",width: 20,height: 30,color: coffeeColor2,)
                  
                          ,Padding(
                            padding: const EdgeInsets.symmetric(vertical: 4),
                            child: Text("Medium",style: GoogleFonts.nunito(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            color: coffeeColor2,
                            )),
                          ),
                            Text("12 Oz",style: GoogleFonts.nunito(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: coffeeColor2,
                          )),
                  ],
                ),
              ),
            ),
          ),
        ),
        const SizedBox(width: 22,),
        GestureDetector(
           onTap: (() {
              setState(() {
                if(backgroundColor3==ConstColors.backgroundColor){

                        backgroundColor3=ConstColors.primaryColor;
                        backgroundColor2=ConstColors.backgroundColor;
                        backgroundColor1= ConstColors.backgroundColor;
                               coffeeColor3=ConstColors.backgroundColor;
                      coffeeColor2=ConstColors.blackColor;
                        coffeeColor1= ConstColors.blackColor;
                }
               else{
                backgroundColor3=ConstColors.backgroundColor;
                coffeeColor3=ConstColors.blackColor;
               }
              
              });
            }),
          child: Container(
            decoration:BoxDecoration(
              color: backgroundColor3,
              borderRadius: BorderRadius.circular(10)
            ) ,
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                children: [
                    Image.asset("Assets/images/coffeCup.png",width: 25,height: 36,color: coffeeColor3,)
        
                        ,Padding(
                          padding: const EdgeInsets.symmetric(vertical: 4),
                          child: Text("Large",style: GoogleFonts.nunito(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          color: coffeeColor3,
                          )),
                        ),
                          Text("12 Oz",style: GoogleFonts.nunito(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: coffeeColor3,
                        )),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}