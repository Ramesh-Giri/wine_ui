import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned(
            child: Container(
              height: MediaQuery.of(context).size.height,
              color: Colors.white,
              child: Column(
                children: <Widget>[
                  _buildTopSection(),

                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          height: 70.0,
                          child: Center(
                            child: Text("\$1324.95", style: TextStyle(color: Color(0xFF8A0054), fontSize: 18.0,fontWeight: FontWeight.bold),),

                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          color: Color(0xFF8A0054),
                          height: 70.0,
                          child: Center(
                            child: Text("Add to cart", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                          ),
                        ),
                      )
                    ],
                  ),

                  SizedBox(height: 20.0,),
                  RichText(
                    text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(text: 'Valduero, ', style: TextStyle(fontFamily: 'PlayfairDisplay',fontSize: 32.0, fontWeight: FontWeight.bold, color: Colors.black)),
                        TextSpan(text: ' Gran\nReserva XII Anos', style: TextStyle(fontFamily: 'PlayfairDisplay',fontSize: 32.0,color: Colors.black54)),
                      ],
                    ),
                  )
                ],

              ),

            ),
          ),
          Positioned(
            top: 0.0,
            left: 20.0,
            right: 20.0,
            child: AppBar(
              elevation: 0.0,
              backgroundColor: Colors.transparent,
              actions: <Widget>[
                Icon(
                  Icons.favorite_border,
                  color: Colors.black,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  _buildTopSection() {
    return Row(
      children: <Widget>[
        Expanded(
          child: Container(
            padding: EdgeInsets.only(top: 80.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Color(0xFFFED7EB),
                        borderRadius: BorderRadiusDirectional.circular(10.0),
                      ),
                      child: Center(
                        child: Icon(
                          Icons.line_weight,
                          color: Color(0xFF786271).withOpacity(0.5),
                        ),
                      ),
                    ),
                    SizedBox(height: 10.0,),
                    Text(
                      "Volume, L",
                      style: TextStyle(
                        color: Color(0xFF786271).withOpacity(0.5),
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    SizedBox(height: 10.0,),
                    Text(
                      "0.75",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 28.0
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 32.0,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Color(0xFFE6E7FA),
                        borderRadius: BorderRadiusDirectional.circular(10.0),
                      ),
                      child: Center(
                        child: Icon(
                          FontAwesomeIcons.tint,
                          size: 12.0,
                          color: Color(0xFF79839D),
                        ),
                      ),
                    ),
                    SizedBox(height: 10.0,),
                    Text(
                      "Alcohol %",
                      style: TextStyle(
                        color: Color(0xFF79839D).withOpacity(0.5),
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    SizedBox(height: 10.0,),
                    Text(
                      "13.5",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 28.0
                      ),
                    ),
                  ],
                ),
            SizedBox(height: 32.0,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Color(0xFFFED7EB),
                        borderRadius: BorderRadiusDirectional.circular(10.0),
                      ),
                      child: Center(
                        child: Icon(
                          Icons.scatter_plot,
                          color: Color(0xFF786271).withOpacity(0.5),
                        ),
                      ),
                    ),
                    SizedBox(height: 10.0,),
                    Text(
                      "Sugar g/l",
                      style: TextStyle(
                        color: Color(0xFF786271).withOpacity(0.5),
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    SizedBox(height: 10.0,),
                    Text(
                      "1.0",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 28.0
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),

        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xFFFCF8F6),
              gradient: RadialGradient(
                radius: 0.9,
                // Add one stop for each color. Stops should increase from 0 to 1
                colors: [
                  Color(0xFFDAD7D9),
                  Color(0xFFFCF8F6),
                  Colors.white
                ],
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 80.0,),
                Image(image: AssetImage("images/img_wine.png"),height: 400,),
                SizedBox(height: 20.0,),
              ],
            ),
          ),
        )
      ],
    );
  }
}
