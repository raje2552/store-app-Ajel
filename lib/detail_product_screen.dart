
import 'package:flutter/material.dart';

class Detail_Product extends StatefulWidget{


  @override
  State<Detail_Product> createState() => _Detail_ProductState();
}

class _Detail_ProductState extends State<Detail_Product> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(title: Text('Details' , style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600,
            fontFamily: 'ReadexPro',
            height: 1.2,
            letterSpacing: 0
        ),) ,centerTitle: true,
          leading: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back)),
          backgroundColor: Colors.white,
        ),

        body: SafeArea(
          child:Container(
              margin: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 8,
                children: [
                  Container(child: Image.asset("assets/images/shart_image.png" ,
                    height: 368.53, width:341 ,alignment: AlignmentGeometry.center,)),
                  Container(
                    child: Column(
                      spacing:10,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Fit Polo T Shirt',
                          style:TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 24,
                              fontFamily: 'DMSans',
                              height: 1.2,
                              letterSpacing: 0,
                              color: Color.fromRGBO(26, 26, 26, 1)

                          ) ,),

                        Row(
                          children: [
                            Icon(Icons.star,
                              color: Colors.amber,
                              size: 20,
                            ),
                            Text('4.0/5' , style: TextStyle(
                                color: Color.fromRGBO(26, 26, 26, 1),
                                fontSize: 16,
                                fontFamily: 'ReadexPro',
                                fontWeight: FontWeight.w500,
                                height: 1.4

                            ),),
                            Text(" (45 reviews)" ,style: TextStyle(
                                color: Color.fromRGBO(128, 128, 128, 1),
                                fontWeight: FontWeight.w500,
                                fontFamily: 'ReadexPro',
                                fontSize: 16,
                                height: 1.4

                            ),)

                          ],
                        )
                        ,Text('Blue T Shirt . Good for All Men and Suits for All of Them.Blue T Shirt . Good for All Men and Suits for All of Them'
                          , style: TextStyle(
                              fontFamily: 'DMSans',
                              fontWeight: FontWeight.w400,
                              height: 1.4,
                              fontSize: 15,
                              letterSpacing: 0,
                              color: Color.fromRGBO(128, 128, 128, 1)
                          ),
                        )
                      ],
                    ),
                  ),

                  Spacer(),

                  Container(
                    height: 105,
                    width: 390,
                    decoration: const BoxDecoration(
                        border: Border(top: BorderSide(color: Color.fromRGBO(230, 230, 230, 1)
                            , width: 1 ,
                            style: BorderStyle.solid))
                    ) ,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,

                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Price' , style: TextStyle(
                                fontFamily: 'ReadexPro',
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                letterSpacing: 0,

                                color: Color.fromRGBO(128, 128, 128, 1)
                            ),),
                            Text("\$1,190" , style: TextStyle(
                              fontFamily: 'ReadexPro',
                              fontSize: 24,
                              fontWeight: FontWeight.w600,

                            ),)
                          ],
                        ),
                        Spacer(),
                        SizedBox(
                          height: 54,
                          width: 240,
                          child: ElevatedButton(onPressed: (){}, child: Text("Add to Cart" , style: TextStyle(
                              color: Colors.white
                          ),) , style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromRGBO(54, 105, 201, 1),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          )
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              )
          ),
        )
    );
  }
}