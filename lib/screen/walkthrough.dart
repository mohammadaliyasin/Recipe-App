import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recipe_app/main.dart';
import 'package:recipe_app/screen/Home.dart';

class WalkthroughScreen extends StatelessWidget {
  const WalkthroughScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff11151E),
      body: Container(
        padding: EdgeInsets.all(16.r),
        width: double.infinity.w,
        height: MediaQuery.of(context).size.height.h,
        child: Column(
          children: [
            SizedBox(
              height: 40.h,
            ),
            Stack(
              children: [
              Image.asset(
                'assets/1.png',
                scale: 2.r,
              ),
              Image.asset(
                'assets/2.png',
                scale: 6.r,
              ),
            ]),
            SizedBox(
              height: 40.h,
            ),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                style: GoogleFonts.outfit(
                  fontSize: 38.sp,
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
                children: <TextSpan>[
                  const TextSpan(
                    text: 'Find the perfect recipe',
                  ),
                  TextSpan(
                    text: ' everyday\n',
                    style: GoogleFonts.outfit(
                      color: Color(0xffd6fc51),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  TextSpan(
                    text:
                        ' \nMore than 20 thousand recipes \nof healthy and healthy food',
                    style: GoogleFonts.outfit(
                      color: Colors.white,
                      fontSize: 17.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => Home()),
                );
              },
              child: Text(
                'Get Started',
                style: GoogleFonts.outfit(
                    color: Color(0xff11151E),
                    fontWeight: FontWeight.w600,
                    fontSize: 16.sp),
              ),
              style: ButtonStyle(
                  minimumSize: WidgetStatePropertyAll(Size(300.w, 50.h)),
                  backgroundColor: WidgetStatePropertyAll(Color(0xffd6fc51))),
            ),
          ],
        ),
      ),
    );
  }
}
