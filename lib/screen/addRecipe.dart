import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recipe_app/main.dart';

class Addrecipe extends StatelessWidget {
  const Addrecipe({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff11151E),
      appBar: AppBar(
        backgroundColor: const Color(0xff11151E),
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        title: Text(
          'Add Recipe',
          style: GoogleFonts.outfit(
              color: Color(0xffffffff), fontWeight: FontWeight.w600),
        ),
        actions: [
          TextButton(
            onPressed: () {},
            child: Text(
              'Save',
              style: GoogleFonts.outfit(
                color: const Color(0xff11151E),
                fontWeight: FontWeight.w600,
                fontSize: 12.sp,
              ),
            ),
            style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(Color(0xffd6fc51))),
          ),
          SizedBox(
            width: 15.w,
          ),
        ],
      ),
    );
  }
}
