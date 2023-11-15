import 'package:ecommerce_app/themes/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text("Setting",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: linear2,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: screenWidth, height: 200,
              // color: Colors.black,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                        height: 120, width: 120,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: linear2,
                      ),
                    ),
                    Container(
                      width: screenWidth * .55, height: 125,
                      // color: Colors.white,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Username",
                                style: finance(color: Colors.black),
                              ),
                              SizedBox(height: 10,),
                              Text("Email User"),
                              SizedBox(height: 5,),
                              InkWell(
                                onTap: (){},
                                child: Text("View Profile")
                              )
                            ]
                        )
                    ),
                  ],
                )
            ),
            Container(
              width: screenWidth, height: 80,
              // color: Colors.black,
              child: InkWell(
                onTap: (){},
                  child: Container(
                    margin: EdgeInsets.all(12),
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      color: Colors.white70,
                      borderRadius: BorderRadius.circular(7)
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.calendar_today_rounded,
                              size: 35,
                            ),
                            SizedBox(width: 7,),
                            Text("See Order History",
                              style: GoogleFonts.poppins(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ],
                    )
                  )
              )
            )
          ],
        ),
      ),
    );
  }
}
