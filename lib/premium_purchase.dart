import 'package:flutter/material.dart';

class Premium_subs extends StatefulWidget {
  const Premium_subs({super.key});

  @override
  State<Premium_subs> createState() => _Premium_subsState();
}

class _Premium_subsState extends State<Premium_subs> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height / 1.5,
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            child: Container(
              width: size.width,
              height: size.height / 2.1,
              decoration: BoxDecoration(
                color: Color(0xffFFD700),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(40),
                  topLeft: Radius.circular(40),
                ),
              ),
            ),
          ),
          Positioned(
            top: 15,
            left: 150,
            child: CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage(
                "images/tan2004.png",
              ),
            ),
          ),
          Positioned(
            top: size.height / 6,
            left: size.width / 2.2,
            child: Text('Ebook',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
          ),
          Positioned(
            top: size.height / 5,
            left: size.width / 2.9,
            child: Text('Powerd by ASPER',style: TextStyle(color: Colors.black)),
          ),

          Positioned(
            top: size.height / 4,
            left: size.width / 10,

            child: Text('y to thinkl more just buy and enjoy raeding',style: TextStyle(color: Colors.black)),
          ),
          Positioned(
            bottom: size.height / 6,
            child: Container(
              width: size.width / 1,
              height: size.height / 10,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Container(
                      width: size.width / 4,
                      height: size.height / 10,
                      color: Colors.transparent,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('1 month',style: TextStyle(color: Colors.black)),
                          SizedBox(
                            height: 5,
                          ),
                          Text('99 INR ',style: TextStyle(color: Colors.black)),
                        ],
                      ),
                    ),
                  ),

                  ///yaha se new try part
                  Padding(
                    padding: const EdgeInsets.only(right: 20, left: 20),
                    child: Container(
                      width: size.width / 4,
                      height: size.height / 10,
                      color: Colors.transparent,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('3 months',style: TextStyle(color: Colors.black)),
                          SizedBox(
                            height: 5,
                          ),
                          Text('999 INR',style: TextStyle(color: Colors.black)),
                        ],
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Container(
                      width: size.width / 4,
                      height: size.height / 10,
                      color: Colors.transparent,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('1 year',style: TextStyle(color: Colors.black),),
                          SizedBox(
                            height: 5,
                          ),
                          Text('9999 INR',style: TextStyle(color: Colors.black)),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 50,
            child: MaterialButton(
              onPressed: () {},
              minWidth: size.width / 1,
              height: size.height / 15,
              color: Colors.white,
              splashColor: Color(0xffFFD700),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
              child: Row(

                children: [
                  Center(
                    child: Text('Buy now' ,style: TextStyle(color: Colors.black),),
                  ), SizedBox(width: 20,),
                  Icon(Icons.monetization_on_outlined,color: Colors.black,),
                ],
              )
            ),
          )
        ],
      ),
    );
  }
}
